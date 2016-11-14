require 'tk'

#background "pink"
#root = TkRoot.new { title "Self Learning!" }
#TkLabel.new(root) do
	
 #  text 'Subject:-'
  # pack { padx 20 ; pady 20; side 'left' }
#end

#Tk.mainloop

$resultsVar = TkVariable.new
root1 = TkRoot.new
root1.title = "SELF LEARNING"
Lbl = TkLabel.new(root1) do
  textvariable

  borderwidth 15
  font TkFont.new('times 50 bold')
  foreground  "blue"
  background   "yellow"
  relief      "groove"
   pack { padx 1200 ; pady 80; side 'left' }
end

Lbl['textvariable'] = $resultsVar
$resultsVar.value = 'Subject:Ruby Programming Language'

#Tk.mainloop

root2 = TkRoot.new
root2.title = "SELF LEARNING"

button_click = Proc.new {
	
  Tk.chooseColor
}

button = TkButton.new(root2) do
  text "Color"
  background "green"
  font TkFont.new('times 30 bold')
  pack("side" => "left",  "padx"=> "30", "pady"=> "50")
end

button.comman = button_click

Tk.mainloop

