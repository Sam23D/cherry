defmodule Cherry do
  @moduledoc """
  Documentation for Cherry.
  """
  use Hound.Helpers
  @doc """
  Hello world.

  ## Examples

      iex> Cherry.hello()
      :world

  """

  @all [
    {"Fernando Fierro" , "Fernando ¡Hola! Mi nombre es Whats'on y soy un robot, no te asustes, Victor solo esta experimentando conmigo, te manda saludos de pasada :)"},
    {"Veronica Bustillos" , "Veronica ¡Hola! Mi nombre es Whats'on y soy un robot, no te asustes, Victor solo esta experimentando conmigo, te manda saludos de pasada :)"},
    {"Samuel Blanco" , "Samuel ¡Hola! Mi nombre es Whats'on y soy un robot, no te asustes, Victor solo esta experimentando conmigo, te manda saludos de pasada :)"},
    {"Cristina Calzadillas" , "Cristina ¡Hola! Mi nombre es Whats'on y soy un robot, no te asustes, Victor solo esta experimentando conmigo, te manda saludos de pasada :)"},
    # {"Grisel Armendáriz" , "Grisel ¡Hola! Mi nombre es Whats'on y soy un robot, no te asustes, Victor solo esta experimentando conmigo, te manda saludos de pasada :)"},
    # {"Marina Burciaga" , "Marina ¡Hola! Mi nombre es Whats'on y soy un robot, no te asustes, Victor solo esta experimentando conmigo, te manda saludos de pasada :)"},
    # {"Mercedes Morales" , "Mercedes ¡Hola! Mi nombre es Whats'on y soy un robot, no te asustes, Victor solo esta experimentando conmigo, te manda saludos de pasada :)"},
    # {"Santiago Villalobos" , "Santiago ¡Hola! Mi nombre es Whats'on y soy un robot, no te asustes, Victor solo esta experimentando conmigo, te manda saludos de pasada :)"},
    {"Arturo Cano" , "Arturo ¡Hola! Mi nombre es Whats'on y soy un robot, no te asustes, Victor solo esta experimentando conmigo, te manda saludos de pasada :)"},
    # {"Lizbeth García" , "Lizbeth ¡Hola! Mi nombre es Whats'on y soy un robot, no te asustes, Victor solo esta experimentando conmigo, te manda saludos de pasada :)"},
    # {"Anahi Gonzalez" , "Anahi ¡Hola! Mi nombre es Whats'on y soy un robot, no te asustes, Victor solo esta experimentando conmigo, te manda saludos de pasada :)"},
    # {"Tania Vázquez" , "Tania ¡Hola! Mi nombre es Whats'on y soy un robot, no te asustes, Victor solo esta experimentando conmigo, te manda saludos de pasada :)"},
    # {"Elsa Morales" , "Elsa ¡Hola! Mi nombre es Whats'on y soy un robot, no te asustes, Victor solo esta experimentando conmigo, te manda saludos de pasada :)"},
    {"Saul Gallardo" , "Saul ¡Hola! Mi nombre es Whats'on y soy un robot, no te asustes, Victor solo esta experimentando conmigo, te manda saludos de pasada :)"},
    # {"Luis Alberto Ri Ag" , "Luis ¡Hola! Mi nombre es Whats'on y soy un robot, no te asustes, Victor solo esta experimentando conmigo, te manda saludos de pasada :)"},
    # {"Rafael Muñoz" , "Rafael ¡Hola! Mi nombre es Whats'on y soy un robot, no te asustes, Victor solo esta experimentando conmigo, te manda saludos de pasada :)"},
    # {"Alejandro Vargas" , "Alejandro ¡Hola! Mi nombre es Whats'on y soy un robot, no te asustes, Victor solo esta experimentando conmigo, te manda saludos de pasada :)"},
    # {"Pamela Villareal" , "Pamela ¡Hola! Mi nombre es Whats'on y soy un robot, no te asustes, Victor solo esta experimentando conmigo, te manda saludos de pasada :)"},
    # {"Orlando muñoz" , "Orlando ¡Hola! Mi nombre es Whats'on y soy un robot, no te asustes, Victor solo esta experimentando conmigo, te manda saludos de pasada :)"},
    {"Anwar Orozco" , "Anwar ¡Hola! Mi nombre es Whats'on y soy un robot, no te asustes, Victor solo esta experimentando conmigo, te manda saludos de pasada :)"},
    # {"Joana Nuñez" , "Joana ¡Hola! Mi nombre es Whats'on y soy un robot, no te asustes, Victor solo esta experimentando conmigo, te manda saludos de pasada :)"},
    # {"Gerardo Marin" , "Gerardo ¡Hola! Mi nombre es Whats'on y soy un robot, no te asustes, Victor solo esta experimentando conmigo, te manda saludos de pasada :)"},
    # {"Pancho Martinez" , "Pancho ¡Hola! Mi nombre es Whats'on y soy un robot, no te asustes, Victor solo esta experimentando conmigo, te manda saludos de pasada :)"},
    # {"Cesar González" , "Cesar ¡Hola! Mi nombre es Whats'on y soy un robot, no te asustes, Victor solo esta experimentando conmigo, te manda saludos de pasada :)"},
    # {"kristel Vázquez" , "kristel ¡Hola! Mi nombre es Whats'on y soy un robot, no te asustes, Victor solo esta experimentando conmigo, te manda saludos de pasada :)"},
    # {"Homero Gutierrez" , "Homero ¡Hola! Mi nombre es Whats'on y soy un robot, no te asustes, Victor solo esta experimentando conmigo, te manda saludos de pasada :)"}
  ]

  def mass_send()do
  @all
    |> Enum.map(fn
      {person_name, msg} -> 
        Cherry.type_into_search_input(person_name)
        Process.sleep( 1000)
        Cherry.select_elem_list(0)
        Process.sleep( 1000)
        Cherry.type_message_input(msg)
        Cherry.submit_message_input
      end)
  end

  def open_web_whatssap do
    Hound.start_session
    navigate_to "https://web.whatsapp.com/"
  end

  def is_qr_required? do
    element = search_element(:class, "landing-title", 0)
    |> case do
      {:ok, element} ->
        true
      error ->
        false
    end
  end

  def select_elem_list( elem_index \\ 0) do
    element = {:class, "_1vDUw"}# TODOD MAKE A CATALOG (cross in search input)
    |> move_to(10, (elem_index * 72) + 10)
    |> mouse_down()
  end

  def clean_search_input()do
    element = {:class, "jN-F5"}# TODOD MAKE A CATALOG (cross in search input)
    |> click()
  end

  def type_into_search_input(msg) do
    element = {:class, "jN-F5"}# TODO MAKE A CATALOG OF WA-ELEMENTS
    clear_field(element)
    input_into_field(element, msg)
  end

  def submit_search_input do
    send_keys :enter    
  end

  def type_message_input(msg) do
    element = {:class, "_2S1VP"}
    click(element)
    clear_field(element)
    input_into_field(element, msg)
  end

  def submit_message_input do
    send_keys :enter
  end

end
