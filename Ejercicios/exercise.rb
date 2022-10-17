=begin
En la empresa activos SA se tiene un software para la nomina de los empleados
los empleados estan clasificados en personal administrativo y personal de servicio
todos los empleados comparten  atributos nombre direccion cargo y telefono

los empleados administrativos tienen como atributos adicionales, num_escritorio, piso, area
los empleados de servicio tienen como atributos edificio

se debe poder calcular la nomina teniendo en cuenta el numero de horas trabajadas al mes
y el salario base

empleados administrativos 2 SMMLV
empleados de servicio 1 SMMLV
=end

# Employee -> AdministrativeEmployee
          # -> ServiceEmployee


class Employee
  BASE_SALARY = 1000000
  attr_accessor :name, :address, :role, :phone
  def initialize(name, address, role, phone)
    @name = name
    @address = address
    @role = role
    @phone = phone
  end

  def payroll(hours_worked)
    ((base_salary.to_f / 240) * hours_worked).to_i
  end

end

class AdministrativeEmployee < Employee
  attr_accessor :desk_number, :floor, :area

  def initialize(name, address, role, phone, desk_number, floor, area)
    super(name, address, role, phone)
    @desk_number = desk_number
    @floor = floor
    @area = area
  end

  def base_salary
    2 * BASE_SALARY
  end

end

class ServiceEmployee < Employee
  attr_accessor :building

  def initialize(name, address, role, phone, building)
    super(name, address, role, phone)
    @building = building
  end

  def base_salary
    1 * BASE_SALARY
  end
end


admin = AdministrativeEmployee.new("Juan", "Cl 1 Cr 1", "admin", "55555", 54, 5, "Contaduria")
p admin
puts admin.base_salary
puts admin.payroll(240)

service = ServiceEmployee.new("Pedro", "Cl 12 Cr 13", "general", "7897", 2)
p service
puts service.base_salary
puts service.payroll(200)

puts Employee::BASE_SALARY