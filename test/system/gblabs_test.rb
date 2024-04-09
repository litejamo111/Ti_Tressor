require "application_system_test_case"

class GblabsTest < ApplicationSystemTestCase
  setup do
    @gblab = gblabs(:one)
  end

  test "visiting the index" do
    visit gblabs_url
    assert_selector "h1", text: "Gblabs"
  end

  test "should create gblab" do
    visit gblabs_url
    click_on "New gblab"

    fill_in "Base refrigerante", with: @gblab.base_refrigerante
    fill_in "Bitrix24", with: @gblab.bitrix24
    fill_in "Celular", with: @gblab.celular
    fill_in "Correo", with: @gblab.correo
    fill_in "Diadema", with: @gblab.diadema
    fill_in "Disco", with: @gblab.disco
    fill_in "Equipo", with: @gblab.equipo
    fill_in "Grafica", with: @gblab.grafica
    fill_in "Memoria", with: @gblab.memoria
    fill_in "Monitor", with: @gblab.monitor
    fill_in "Mouse", with: @gblab.mouse
    fill_in "Nombre", with: @gblab.nombre
    fill_in "Observaciones", with: @gblab.observaciones
    fill_in "Otro accesorio", with: @gblab.otro_accesorio
    fill_in "Procesador", with: @gblab.procesador
    fill_in "Teclado", with: @gblab.teclado
    fill_in "Tipo", with: @gblab.tipo
    fill_in "Ubicacion", with: @gblab.ubicacion
    fill_in "Usuario", with: @gblab.usuario
    click_on "Create Gblab"

    assert_text "Gblab was successfully created"
    click_on "Back"
  end

  test "should update Gblab" do
    visit gblab_url(@gblab)
    click_on "Edit this gblab", match: :first

    fill_in "Base refrigerante", with: @gblab.base_refrigerante
    fill_in "Bitrix24", with: @gblab.bitrix24
    fill_in "Celular", with: @gblab.celular
    fill_in "Correo", with: @gblab.correo
    fill_in "Diadema", with: @gblab.diadema
    fill_in "Disco", with: @gblab.disco
    fill_in "Equipo", with: @gblab.equipo
    fill_in "Grafica", with: @gblab.grafica
    fill_in "Memoria", with: @gblab.memoria
    fill_in "Monitor", with: @gblab.monitor
    fill_in "Mouse", with: @gblab.mouse
    fill_in "Nombre", with: @gblab.nombre
    fill_in "Observaciones", with: @gblab.observaciones
    fill_in "Otro accesorio", with: @gblab.otro_accesorio
    fill_in "Procesador", with: @gblab.procesador
    fill_in "Teclado", with: @gblab.teclado
    fill_in "Tipo", with: @gblab.tipo
    fill_in "Ubicacion", with: @gblab.ubicacion
    fill_in "Usuario", with: @gblab.usuario
    click_on "Update Gblab"

    assert_text "Gblab was successfully updated"
    click_on "Back"
  end

  test "should destroy Gblab" do
    visit gblab_url(@gblab)
    click_on "Destroy this gblab", match: :first

    assert_text "Gblab was successfully destroyed"
  end
end
