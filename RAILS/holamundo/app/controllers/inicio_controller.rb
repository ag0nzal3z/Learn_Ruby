class InicioController < ApplicationController
  def index
      @saludo = "Buenos dias"
      @lista = ["Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo"]
      @diccionario = {"Lunes" => 14, "Martes" => 15, "Miercoles" => 15, "Jueves" => 16, "Viernes" => 17, "Sabado" => 18, "Domingo" => 19}
  end
end
