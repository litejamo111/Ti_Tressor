require "test_helper"

class GblabsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gblab = gblabs(:one)
  end

  test "should get index" do
    get gblabs_url
    assert_response :success
  end

  test "should get new" do
    get new_gblab_url
    assert_response :success
  end

  test "should create gblab" do
    assert_difference("Gblab.count") do
      post gblabs_url, params: { gblab: { base_refrigerante: @gblab.base_refrigerante, bitrix24: @gblab.bitrix24, celular: @gblab.celular, correo: @gblab.correo, diadema: @gblab.diadema, disco: @gblab.disco, equipo: @gblab.equipo, grafica: @gblab.grafica, memoria: @gblab.memoria, monitor: @gblab.monitor, mouse: @gblab.mouse, nombre: @gblab.nombre, observaciones: @gblab.observaciones, otro_accesorio: @gblab.otro_accesorio, procesador: @gblab.procesador, teclado: @gblab.teclado, tipo: @gblab.tipo, ubicacion: @gblab.ubicacion, usuario: @gblab.usuario } }
    end

    assert_redirected_to gblab_url(Gblab.last)
  end

  test "should show gblab" do
    get gblab_url(@gblab)
    assert_response :success
  end

  test "should get edit" do
    get edit_gblab_url(@gblab)
    assert_response :success
  end

  test "should update gblab" do
    patch gblab_url(@gblab), params: { gblab: { base_refrigerante: @gblab.base_refrigerante, bitrix24: @gblab.bitrix24, celular: @gblab.celular, correo: @gblab.correo, diadema: @gblab.diadema, disco: @gblab.disco, equipo: @gblab.equipo, grafica: @gblab.grafica, memoria: @gblab.memoria, monitor: @gblab.monitor, mouse: @gblab.mouse, nombre: @gblab.nombre, observaciones: @gblab.observaciones, otro_accesorio: @gblab.otro_accesorio, procesador: @gblab.procesador, teclado: @gblab.teclado, tipo: @gblab.tipo, ubicacion: @gblab.ubicacion, usuario: @gblab.usuario } }
    assert_redirected_to gblab_url(@gblab)
  end

  test "should destroy gblab" do
    assert_difference("Gblab.count", -1) do
      delete gblab_url(@gblab)
    end

    assert_redirected_to gblabs_url
  end
end
