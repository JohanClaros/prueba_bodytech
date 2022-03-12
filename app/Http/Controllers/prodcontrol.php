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