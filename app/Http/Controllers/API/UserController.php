<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use App\Models\Message;


class UserController extends Controller
{
    public $successStatus = 200;

    /**
     * login api
     *
     * @return \Illuminate\Http\Response
     */
    public function login()
    {
        if (Auth::attempt(['name' => request('name'), 'password' => request('password')])) {
            $user = Auth::user();
            $success['token'] =  $user->createToken('API')->accessToken;
            return response()->json([
                'success' => $success,
                'is_admin'=> $user['is_admin']
            ],$this->successStatus);
        } else {
            return response()->json(['error' => 'Unauthorised'], 401);
        }
    }

    /**
     * Register api
     *
     * @return \Illuminate\Http\Response
     */
    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'password' => 'required',
        ]);


        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 401);
        }
        $input = $request->all();
        $input['password'] = bcrypt($input['password']);
        $user = User::create($input);
        $success['token'] =  $user->createToken('MyApp')->accessToken;
        $success['name'] =  $user->name;
        return response()->json(['success' => $success], $this->successStatus);
    }

    /**
     * details api
     *
     * @return \Illuminate\Http\Response
     */
    public function details()
    {
        $data=User::with('messages')->get();

        return response() -> json([
            'state' => 'success',
            'data' => $data
        ]);
    }
    public function submit(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'type' => 'required',
            'department' => 'required',
            'date' => 'required',
            'reason'=>'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 401);
        }
        $input = $request->all();
        $user = Message::create($input);
        $success['name'] =  $user->name;
        return response()->json([
            'code' => '201',
            'message'=>'success'
            ], 201);
    }
        public function  accept($auditStatus)
        {
            if($auditStatus == 0)
            {
                return response()->json([
                    'auditStatus' => '0',
                    'message'=>'审批中'
                ]);
            }
            if($auditStatus == 1)
            {
                return response()->json([
                    'auditStatus' => '1',
                    'message'=>'通过'
                ]);
            }
            if($auditStatus == 2)
            {
                return response()->json([
                    'auditStatus' => '2',
                    'message'=>'不通过'
                ]);
            }
        }
        public function look($id)
        {
            $messages = User::find($id)->messages;
            return response() -> json([
                'state' => 'success',
                'data' => $messages
            ]);

        }

}
