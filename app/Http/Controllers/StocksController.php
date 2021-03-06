<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Response;
use Illuminate\Http\Request;
use App\Models\ProductStock;
use App\Models\ProductSizeStock;
use Carbon\Carbon;

class StocksController extends Controller
{
    public function stock(){
        return view ('stocks.stock');
    }

    public function stockSubmit(Request $request){
         //Validate data
         $validate = Validator::make($request->all(), [
            'product_id' => 'required|numeric',
            'date' => 'required|string',
            'stock_type' => 'required|string',
            'items' => 'required'
        ]);

        //Error Response
        if($validate->fails()){
            return response()->json([
                'success' => false,
                'errors' => $validate->errors()
            ], Response::HTTP_UNPROCESSABLE_ENTITY);
        }

        //Store Product Stock
        foreach ($request->items as $item){
            if($item['quantity'] && $item['quantity'] > 0){
                $new_item = new ProductStock();
                $new_item->product_id = $request->product_id;
                $new_item->date = $request->date;
                $new_item->status = 'in';
                $new_item->size_id = $item['size_id'];
                $new_item->quantity = $item['quantity'];
                $new_item->utype = 'ADM';
                $new_item->save();

                //Product Stock Size Update
                $psq = ProductSizeStock::where('product_id', $request->product_id)
                    ->where('size_id', $item['size_id'])
                    ->first();
                
                
                $psq->quantity = $psq->quantity + $item['quantity'];
                $psq->save();
            }
        }

        flash('Stock updated successfully')->success();

        return response()->json([
            'success' => true
        ], Response::HTTP_OK);
    }

    public function history(){
        $stocks = ProductStock::with(['product', 'size'])->orderBy('created_at', 'DESC')->get();
        return view('stocks.history', compact('stocks'));
    }

    public function today(){
        $stocks = ProductStock::with(['product', 'size'])->whereDate('date', Carbon::today())->orderBy('created_at', 'DESC')->get();
        return view('stocks.print', compact('stocks'));
    }

    public function month(){
        $date = Carbon::today()->subDays(30); 
        $stocks = ProductStock::with(['product', 'size'])->where('date','>=',$date)->orderBy('created_at', 'DESC')->get();
        return view('stocks.print', compact('stocks'));
    }

    public function week(){
        $date = Carbon::today()->subDays(7); 
        $stocks = ProductStock::with(['product', 'size'])->where('date','>=',$date)->orderBy('created_at', 'DESC')->get();
        return view('stocks.print', compact('stocks'));
    }

    public function print(){
        $stocks = ProductStock::with(['product', 'size'])->orderBy('created_at', 'DESC')->get();
        return view('stocks.print', compact('stocks'));
    }
}
