<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class prodcontrol extends Controller
{
    /**
     * 
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Product::all();
    }

    /**
     * Crea el producto
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'nombre' => 'required',
            'token' => 'required',
            'precio' => 'required'
        ]);

        return Product::create($request->all());
    }



    public function vista(Request $request)
    {
        $userId = $this->usertoken($request);
        $vista = Product::where('user_id', $userId)->get();
        $sum = 0;
        $items = 0;
        foreach ($vista as $receipt) {
            $sum += $receipt['precio'];
            $items += 1;
        }
        $arr = json_decode($vista, TRUE);
        $arr[] = ['id' => $items, 'total' => round($sum, 2)];
        return $arr;
    }

    public function compra(Request $request)
    {
        $userId = $this->usertoken($request);
        $resume = $this->vista($request);
        $vista = $resume[count($resume) - 1];
        $vista = json_decode(json_encode($vista));
        $items = $vistaresume->items;
        if ($items > 0) {
            $array = [
                'user_id' => $userId,
                'compra_resume' => json_encode($resume)
            ];
            $this->clear($request);
            return compra::create($array);
        } else {
            return response(
                [
                    'message' => 'There is no items to shop'
                ],
                202
            );
        }
    }

    /**
     * muestra el producto
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return Product::find($id);
    }

    /**
     * actualiza
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $product = Product::find($id);
        $product->update($request->all());
        return $product;
    }

    /**
     * remueve el producto por id
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return Product::destroy($id);
    }

     /**
     * busca por nombre
     *
     * @param  str  $nombre
     * @return \Illuminate\Http\Response
     */
    public function search($nombre)
    {
        return Product::where('nombre', 'like', '%'.$nombre.'%')->get();
    }



}