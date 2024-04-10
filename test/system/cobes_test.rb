require "application_system_test_case"

class CobesTest < ApplicationSystemTestCase
  setup do
    @cobe = cobes(:one)
  end

  test "visiting the index" do
    visit cobes_url
    assert_selector "h1", text: "Cobes"
  end

  test "should create cobe" do
    visit cobes_url
    click_on "New cobe"

    fill_in "Base refrigerante", with: @cobe.base_refrigerante
    fill_in "Bitrix24", with: @cobe.bitrix24
    fill_in "Celular", with: @cobe.celular
    fill_in "Correo", with: @cobe.correo
    fill_in "Diadema", with: @cobe.diadema
    fill_in "Disco", with: @cobe.disco
    fill_in "Equipo", with: @cobe.equipo
    fill_in "Grafica", with: @cobe.grafica
    fill_in "Memoria", with: @cobe.memoria
    fill_in "Monitor", with: @cobe.monitor
    fill_in "Mouse", with: @cobe.mouse
    fill_in "Nombre", with: @cobe.nombre
    fill_in "Observaciones", with: @cobe.observaciones
    fill_in "Otro accesorio", with: @cobe.otro_accesorio
    fill_in "Procesador", with: @cobe.procesador
    fill_in "Teclado", with: @cobe.teclado
    fill_in "Tipo", with: @cobe.tipo
    fill_in "Ubicacion", with: @cobe.ubicacion
    fill_in "Usuario", with: @cobe.usuario
    click_on "Create Cobe"

    assert_text "Cobe was successfully created"
    click_on "Back"
  end

  test "should update Cobe" do
    visit cobe_url(@cobe)
    click_on "Edit this cobe", match: :first

    fill_in "Base refrigerante", with: @cobe.base_refrigerante
    fill_in "Bitrix24", with: @cobe.bitrix24
    fill_in "Celular", with: @cobe.celular
    fill_in "Correo", with: @cobe.correo
    fill_in "Diadema", with: @cobe.diadema
    fill_in "Disco", with: @cobe.disco
    fill_in "Equipo", with: @cobe.equipo
    fill_in "Grafica", with: @cobe.grafica
    fill_in "Memoria", with: @cobe.memoria
    fill_in "Monitor", with: @cobe.monitor
    fill_in "Mouse", with: @cobe.mouse
    fill_in "Nombre", with: @cobe.nombre
    fill_in "Observaciones", with: @cobe.observaciones
    fill_in "Otro accesorio", with: @cobe.otro_accesorio
    fill_in "Procesador", with: @cobe.procesador
    fill_in "Teclado", with: @cobe.teclado
    fill_in "Tipo", with: @cobe.tipo
    fill_in "Ubicacion", with: @cobe.ubicacion
    fill_in "Usuario", with: @cobe.usuario
    click_on "Update Cobe"

    assert_text "Cobe was successfully updated"
    click_on "Back"
  end

  test "should destroy Cobe" do
    visit cobe_url(@cobe)
    click_on "Destroy this cobe", match: :first

    assert_text "Cobe was successfully destroyed"
  end
end
