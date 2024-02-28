<?php

namespace App\Http\Resources\Laboratory;

use Illuminate\Http\Resources\Json\JsonResource;

class LaboratoryResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return[
            'id'=>$this->resource-> id,
            'appoinment_id'=>$this->resource->appoinment_id,
            'files'=>$this->resource-> files->map(function($file){
                return [
                    'id'=> $file->id,
                    'appoinment_id'=> $file->appoinment_id,
                    'name_file'=> $file->name_file,
                    'size'=> $file->size,
                    'time'=> $file->time,
                    'resolution'=> $file->resolution,
                    // 'file'=> env("APP_URL")."storage/".$file->file,
                    'file'=> env("APP_URL").$file->file,
                    'type'=> $file->type,
                ];
            })
        ];
    }
}
