require "test_helper"

class CobesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cobe = cobes(:one)
  end

  test "should get index" do
    get cobes_url
    assert_response :success
  end

  test "should get new" do
    get new_cobe_url
    assert_response :success
  end

  test "should create cobe" do
    assert_difference("Cobe.count") do
      post cobes_url, params: { cobe: { base_refrigerante: @cobe.base_refrigerante, bitrix24: @cobe.bitrix24, celular: @cobe.celular, correo: @cobe.correo, diadema: @cobe.diadema, disco: @cobe.disco, equipo: @cobe.equipo, grafica: @cobe.grafica, memoria: @cobe.memoria, monitor: @cobe.monitor, mouse: @cobe.mouse, nombre: @cobe.nombre, observaciones: @cobe.observaciones, otro_accesorio: @cobe.otro_accesorio, procesador: @cobe.procesador, teclado: @cobe.teclado, tipo: @cobe.tipo, ubicacion: @cobe.ubicacion, usuario: @cobe.usuario } }
    end

    assert_redirected_to cobe_url(Cobe.last)
  end

  test "should show cobe" do
    get cobe_url(@cobe)
    assert_response :success
  end

  test "should get edit" do
    get edit_cobe_url(@cobe)
    assert_response :success
  end

  test "should update cobe" do
    patch cobe_url(@cobe), params: { cobe: { base_refrigerante: @cobe.base_refrigerante, bitrix24: @cobe.bitrix24, celular: @cobe.celular, correo: @cobe.correo, diadema: @cobe.diadema, disco: @cobe.disco, equipo: @cobe.equipo, grafica: @cobe.grafica, memoria: @cobe.memoria, monitor: @cobe.monitor, mouse: @cobe.mouse, nombre: @cobe.nombre, observaciones: @cobe.observaciones, otro_accesorio: @cobe.otro_accesorio, procesador: @cobe.procesador, teclado: @cobe.teclado, tipo: @cobe.tipo, ubicacion: @cobe.ubicacion, usuario: @cobe.usuario } }
    assert_redirected_to cobe_url(@cobe)
  end

  test "should destroy cobe" do
    assert_difference("Cobe.count", -1) do
      delete cobe_url(@cobe)
    end

    assert_redirected_to cobes_url
  end
end
