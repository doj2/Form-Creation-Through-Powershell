#Form creation using powershell

#Load assemblies for form creation
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

#creation of actual form
$Form = New-Object system.Windows.Forms.Form
#setting the form's size
$Form.Size = New-Object System.Drawing.Size(400,200)
$Form.AutoSize = $True
$Form.AutoSizeMode = "GrowAndShrink"
$Form.Text = "My Test Form"

#Creating a label for the form and placing it into a variable
$Label = New-Object System.Windows.Forms.Label
$Label.AutoSize = $true
$Font = New-Object System.Drawing.Font("Arial",15,[System.Drawing.FontStyle]::Bold)
$form.Font = $Font
$Label.Text = "This is my label for the form"

#creating and sizing the ok button
$okButton = New-Object System.Windows.Forms.Button
$okButton.Location = New-Object System.Drawing.Point(75,120)
$okButton.AutoSize = $true
$okButton.Text = 'OK'
$okButton.DialogResult = [System.Windows.Forms.DialogResult]::OK
$form.AcceptButton = $okButton
$form.Controls.Add($okButton)

#creating and sizing the cancel button
$cancelButton = New-Object System.Windows.Forms.Button
$cancelButton.Location = New-Object System.Drawing.Point(150,120)
$cancelButton.AutoSize = $true
$cancelButton.Text = 'Cancel'
$cancelButton.DialogResult = [System.Windows.Forms.DialogResult]::Cancel
$form.CancelButton = $cancelButton
$form.Controls.Add($cancelButton)

#Adding the label object to the form and running the form app
$Form.Controls.Add($Label)
$Form.ShowDialog()
