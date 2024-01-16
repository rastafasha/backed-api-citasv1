<?php

namespace App\Http\Controllers\Admin;

use App\Models\Publicidad;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use App\Http\Resources\Publicidad\PublicidadResource;
use App\Http\Resources\Publicidad\PublicidadCollection;

class PublicidadController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $publicidads = Publicidad::orderBy('created_at', 'DESC')
        ->get();


        return response()->json([
            'code' => 200,
            'status' => 'Listar publicidads',
            "publicidads" => PublicidadCollection::make($publicidads),
        ], 200);   
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if($request->hasFile('imagen')){
            $path = Storage::putFile("publicidads", $request->file('imagen'));
            $request->request->add(["avatar"=>$path]);
        }

        $publicidad = Publicidad::create($request->all());

        return response()->json([
            "message" => 200,
            "publicidad"=>$publicidad
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $publicidad = Publicidad::findOrFail($id);

        return response()->json([
            "publicidad" => PublicidadResource::make($publicidad),
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $publicidad = Publicidad::findOrFail($id);
        if($request->hasFile('imagen')){
            if($publicidad->avatar){
                Storage::delete($publicidad->avatar);
            }
            $path = Storage::putFile("publicidads", $request->file('imagen'));
            $request->request->add(["avatar"=>$path]);
        }
        $publicidad->update($request->all());

        return response()->json([
            "message" => 200,
            "publicidad" => $publicidad,
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $publicidad = Publicidad::findOrFail($id);
        $publicidad->delete();
        return response()->json([
            "message" => 200
        ]);
    }

    public function updateStatus(Request $request, $id)
    {
        
        $publicidad = Publicidad::findOrfail($id);
        $publicidad->state = $request->state;
        $publicidad->update();

        return response()->json([
            "message" => 200,
            "publicidad" => $publicidad,
            
        ]);
    }

    public function activos()
    {

        $publicidads = Publicidad::orderBy('created_at', 'DESC')
                
                ->where('state', $state=2)
                ->get();
            return response()->json([
                'code' => 200,
                'state' => 'Listar publicidads activas',
                "publicidads" => PublicidadCollection::make($publicidads),
            ], 200);
    }
}
