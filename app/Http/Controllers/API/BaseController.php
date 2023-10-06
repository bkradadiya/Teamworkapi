<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller as Controller;

class BaseController extends Controller {

    protected $general;

    public function __construct() {
//        $this->general = new GeneralComponent();
    }

    /**

     * success response method.

     *

     * @return \Illuminate\Http\Response

     */
    public function sendResponse($result, $message) {

//        $chcek_api = $this->general->__checkXAPI();
//
//        if ($chcek_api == 1) {
        $response = [
            'code' => 200,
            'message' => $message,
            'data' => $result,
        ];
        return response()->json($response, 200);
//        } else {
//            $response = 'Invalid xapi!';
//            return $this->sendError($response);
//        }
    }

    /**

     * return error response.

     *

     * @return \Illuminate\Http\Response

     */
    public function sendError($error, $errorMessages = [], $code = 200) {
        $response = [
            'code' => 500,
            'message' => $error,
        ];
        if (!empty($errorMessages)) {
            $response['data'] = $errorMessages;
        }

        return response()->json($response, $code);
    }

    public function setData($value) {
        array_walk_recursive($value, function (&$item) {
            $item = null === $item ? '' : $item;
        });
        $this->data = $value;
        return $this->data;
    }

}
