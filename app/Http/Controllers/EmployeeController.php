<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Employee;

use App\Department;

class EmployeeController extends Controller
{
    /**
     * Create employee
     *
     * @param  [string] employee_name	
     * @param  [string] company_name
     * @param  [string] mobile
     * @param  [string] email
     * @return [string] city
	 * @return [integer] department_id
     */
    public function createEmployee(Request $request)
    {
        $request->validate([
            'employee_name' => 'required|string',
			'company_name' => 'required|string',
			'mobile' => 'required|string',
			'email' => 'required|string',
			'city' => 'required|string',	
        ]);
		
        $employee = new Employee([
            'employee_name' => $request->employee_name,
			'company_name' => $request->company_name,
			'mobile' => $request->mobile,
			'email' => $request->email,
			'city' => $request->city,
			'department_id' => $request->department_id
        ]);
        
		$employee->save();
		
        return response()->json([
            'message' => 'Successfully created employee!'
        ], 201);
    }
	
	/**
     * Get Employee List
     *
     * @return [json] user object
     */
    public function listEmployee(Request $request)
    {
		$employees = Employee::all();
        return response()->json($employees);
    }
	
	
	/**
     * Get Department List
     *
     * @return [json] user object
     */
    public function listDepartment(Request $request)
    {
		$departments = Department::all();
        return response()->json($departments);
    }
}
