<?php

namespace App\Http\Controllers;

use App\Models\ClientProfile;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ClientProfileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return ClientProfile::all();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreClientProfileRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|unique:client_profiles|email',
            'phone_number' => 'required',
            'city' => 'required',
        ]);
 
        if ($validator->fails()) {
            return ['status' => false, 'message' => 'Valide que todos los campos esten completos y vuelva a intentar.', 'errors' => $validator->errors()];
        }

        $client = ClientProfile::create([
            'name' => $request->name,
            'email' => $request->email,
            'phone_number' => $request->phone_number,
            'city' => $request->city
        ]);
        return ['status' => true, 'client' => $client];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\ClientProfile  $clientProfile
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $client = ClientProfile::find($id);
        $client->pets;
        return $client;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\ClientProfile  $clientProfile
     * @return \Illuminate\Http\Response
     */
    public function edit(ClientProfile $clientProfile)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateClientProfileRequest  $request
     * @param  \App\Models\ClientProfile  $clientProfile
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        ClientProfile::where('id', $id)->update($request->except(['_method']));
        return ['status' => true, 'client' => ClientProfile::find($id)];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\ClientProfile  $clientProfile
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        ClientProfile::where('id', $id)->delete();
        return ['status' => true, 'message' => 'Client deleted successfuly.'];
    }
}
