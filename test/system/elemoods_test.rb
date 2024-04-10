require "application_system_test_case"

class ElemoodsTest < ApplicationSystemTestCase
  setup do
    @elemood = elemoods(:one)
  end

  test "visiting the index" do
    visit elemoods_url
    assert_selector "h1", text: "Elemoods"
  end

  test "should create elemood" do
    visit elemoods_url
    click_on "New elemood"

    fill_in "Base refrigerante", with: @elemood.base_refrigerante
    fill_in "Bitrix24", with: @elemood.bitrix24
    fill_in "Celular", with: @elemood.celular
    fill_in "Correo", with: @elemood.correo
    fill_in "Diadema", with: @elemood.diadema
    fill_in "Disco", with: @elemood.disco
    fill_in "Equipo", with: @elemood.equipo
    fill_in "Grafica", with: @elemood.grafica
    fill_in "Memoria", with: @elemood.memoria
    fill_in "Monitor", with: @elemood.monitor
    fill_in "Mouse", with: @elemood.mouse
    fill_in "Nombre", with: @elemood.nombre
    fill_in "Observaciones", with: @elemood.observaciones
    fill_in "Otro accesorio", with: @elemood.otro_accesorio
    fill_in "Procesador", with: @elemood.procesador
    fill_in "Teclado", with: @elemood.teclado
    fill_in "Tipo", with: @elemood.tipo
    fill_in "Ubicacion", with: @elemood.ubicacion
    fill_in "Usuario", with: @elemood.usuario
    click_on "Create Elemood"

    assert_text "Elemood was successfully created"
    click_on "Back"
  end

  test "should update Elemood" do
    visit elemood_url(@elemood)
    click_on "Edit this elemood", match: :first

    fill_in "Base refrigerante", with: @elemood.base_refrigerante
    fill_in "Bitrix24", with: @elemood.bitrix24
    fill_in "Celular", with: @elemood.celular
    fill_in "Correo", with: @elemood.correo
    fill_in "Diadema", with: @elemood.diadema
    fill_in "Disco", with: @elemood.disco
    fill_in "Equipo", with: @elemood.equipo
    fill_in "Grafica", with: @elemood.grafica
    fill_in "Memoria", with: @elemood.memoria
    fill_in "Monitor", with: @elemood.monitor
    fill_in "Mouse", with: @elemood.mouse
    fill_in "Nombre", with: @elemood.nombre
    fill_in "Observaciones", with: @elemood.observaciones
    fill_in "Otro accesorio", with: @elemood.otro_accesorio
    fill_in "Procesador", with: @elemood.procesador
    fill_in "Teclado", with: @elemood.teclado
    fill_in "Tipo", with: @elemood.tipo
    fill_in "Ubicacion", with: @elemood.ubicacion
    fill_in "Usuario", with: @elemood.usuario
    click_on "Update Elemood"

    assert_text "Elemood was successfully updated"
    click_on "Back"
  end

  test "should destroy Elemood" do
    visit elemood_url(@elemood)
    click_on "Destroy this elemood", match: :first

    assert_text "Elemood was successfully destroyed"
  end
end
