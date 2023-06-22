Add-Type -Assembly System.Windows.Forms

$form = New-Object System.Windows.Forms.Form
$form.Text = 'Test'
$form.AutoSize = $true

$text = New-Object System.Windows.Forms.TextBox
$text.Size = New-Object System.Drawing.Size(300, 20)
$text.Location = New-Object System.Drawing.Size(10, 10)
$text.Text = ''

$label = New-Object System.Windows.Forms.Label
$label.Size = New-Object System.Drawing.Size(300, 20)
$label.Location = New-Object System.Drawing.Size(10, 30)
$label.Text = ''

$button1 = New-Object System.Windows.Forms.Button
$button1.Size = New-Object System.Drawing.Size(300, 20)
$button1.Location = New-Object System.Drawing.Size(10, 50)
$button1.Text = 'Fill'

$button1.add_click{
    $label.Text = $text.Text
}

$button2 = New-Object System.Windows.Forms.Button
$button2.Size = New-Object System.Drawing.Size(300, 20)
$button2.Location = New-Object System.Drawing.Size(10, 70)
$button2.Text = 'Clear'

$button2.add_click{
    $label.Text = ''
}

$form.Controls.Add($text)
$form.Controls.Add($label)
$form.Controls.Add($button1)
$form.Controls.Add($button2)

$form.showDialog()