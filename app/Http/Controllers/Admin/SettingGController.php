<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Models\Settingeneral;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use App\Http\Resources\SettingGeneral\SettingGResource;
use App\Http\Resources\SettingGeneral\SettingGCollection;

class SettingGController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $settings = Settingeneral::orderBy('created_at', 'DESC')
        ->get();


        return response()->json([
            'code' => 200,
            'status' => 'Listar configuraciones',
            "settings" => SettingGCollection::make($settings),
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
        return Settingeneral::create($request->all());
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show( Settingeneral $id)
    {
        $setting = Settingeneral::findOrFail($id);
        return response()->json([
            "setting" => SettingGResource::make($setting),
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
        try {
            DB::beginTransaction();

            $request = $request->all();
            $setting = Settingeneral::find($id);
            $setting->update($request->all());


            DB::commit();
            return response()->json([
                'code' => 200,
                'status' => 'Update setting success',
                'setting' => $setting,
            ], 200);
        } catch (\Throwable $exception) {
            DB::rollBack();
            return response()->json([
                'message' => 'Error no update'  . $exception,
            ], 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $setting = Settingeneral::findOrFail($id);
        $setting->delete();
        return response()->json([
            "message" => 200,
        ]);
    }
}
