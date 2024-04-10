require "test_helper"

class ElemoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @elemood = elemoods(:one)
  end

  test "should get index" do
    get elemoods_url
    assert_response :success
  end

  test "should get new" do
    get new_elemood_url
    assert_response :success
  end

  test "should create elemood" do
    assert_difference("Elemood.count") do
      post elemoods_url, params: { elemood: { base_refrigerante: @elemood.base_refrigerante, bitrix24: @elemood.bitrix24, celular: @elemood.celular, correo: @elemood.correo, diadema: @elemood.diadema, disco: @elemood.disco, equipo: @elemood.equipo, grafica: @elemood.grafica, memoria: @elemood.memoria, monitor: @elemood.monitor, mouse: @elemood.mouse, nombre: @elemood.nombre, observaciones: @elemood.observaciones, otro_accesorio: @elemood.otro_accesorio, procesador: @elemood.procesador, teclado: @elemood.teclado, tipo: @elemood.tipo, ubicacion: @elemood.ubicacion, usuario: @elemood.usuario } }
    end

    assert_redirected_to elemood_url(Elemood.last)
  end

  test "should show elemood" do
    get elemood_url(@elemood)
    assert_response :success
  end

  test "should get edit" do
    get edit_elemood_url(@elemood)
    assert_response :success
  end

  test "should update elemood" do
    patch elemood_url(@elemood), params: { elemood: { base_refrigerante: @elemood.base_refrigerante, bitrix24: @elemood.bitrix24, celular: @elemood.celular, correo: @elemood.correo, diadema: @elemood.diadema, disco: @elemood.disco, equipo: @elemood.equipo, grafica: @elemood.grafica, memoria: @elemood.memoria, monitor: @elemood.monitor, mouse: @elemood.mouse, nombre: @elemood.nombre, observaciones: @elemood.observaciones, otro_accesorio: @elemood.otro_accesorio, procesador: @elemood.procesador, teclado: @elemood.teclado, tipo: @elemood.tipo, ubicacion: @elemood.ubicacion, usuario: @elemood.usuario } }
    assert_redirected_to elemood_url(@elemood)
  end

  test "should destroy elemood" do
    assert_difference("Elemood.count", -1) do
      delete elemood_url(@elemood)
    end

    assert_redirected_to elemoods_url
  end
end
