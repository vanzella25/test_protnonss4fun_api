module Rest
  class Employeer
    include HTTParty

    base_uri "http://dummy.restapiexample.com/api/v1"

    def create_employee(employee)
      headers = { "Accept" => "application/vnd.tasksmanager.v2",
                  "Content-Type" => "application/json" }

      self.class.post("/create", body: employee.to_json, headers: headers)
    end

    def find_employee(employee_id)
      self.class.get("/employee/#{employee_id}")
    end

    def remove_employee(employee_id)
      self.class.delete("/delete/#{employee_id}")
    end
  end
end
