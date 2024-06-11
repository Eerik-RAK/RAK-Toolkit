Add-Type -AssemblyName System.Windows.Forms

$FormObject=[System.Windows.Forms.Form]
$LabelObject=[System.Windows.Forms.Label]
$ComboBoxObject=[System.Windows.Forms.ComboBox]

$DefaultFont='Verdana,12'

#Setup base form
$AppForm=New-Object $FormObject
$AppForm.ClientSize='500,300'
$AppForm.Text='Eerik - Service  Inspector'
$AppForm.BackColor='#ffffff'
$AppForm.Font=$DefaultFont

#GUI
$LabelService=New-Object $LabelObject
$LabelService.Text='Services :'
$LabelService.AutoSize=$true
$LabelService.Location=New-Object System.Drawing.Point(20,20)

$ComboBoxService=New-Object $ComboBoxObject
$ComboBoxService.Width='300'
$ComboBoxService.Location=New-Object System.Drawing.Point(110,20)

#Load the drop down list for services
Get-Service | ForEach-Object {$ComboBoxService.Items.Add($_.Name)}
$ComboBoxService.text='Pick a Service'

$LabelForName=New-Object $LabelObject
$LabelForName.Text='Services Friendly name :'
$LabelForName.AutoSize=$true
$LabelForName.Location=New-Object System.Drawing.Point(20,80)

$LabelName=New-Object $LabelObject
$LabelName.Text=""
$LabelName.AutoSize=$true
$LabelName.Location=New-Object System.Drawing.Point(250,80)

$LabelForStatus=New-Object $LabelObject
$LabelForStatus.Text='Status :'
$LabelForStatus.AutoSize=$true
$LabelForStatus.Location=New-Object System.Drawing.Point(20,120)

$LabelStatus=New-Object $LabelObject
$LabelStatus.Text=''
$LabelStatus.AutoSize=$true
$LabelStatus.Location=New-Object System.Drawing.Point(100,120)

$AppForm.Controls.AddRange(@($LabelService,$ComboBoxService,$LabelForName,$LabelName,$LabelForStatus,$LabelStatus))

#Functions
Function GetServiceDetails{
    $ServiceName=$ComboBoxService.SelectedItem
    $Details=Get-Service -Name $ServiceName | Select *
    $LabelName.Text=$Details.name
    $LabelStatus.Text=$Details.status

    if($LabelStatus.Text -eq 'Running'){
        $LabelStatus.ForeColor='Green'
    }
    if($LabelStatus.Text -eq 'Stopped'){
        $LabelStatus.ForeColor='Red'
    }
   
}

#Add Functions to the controls

$ComboBoxService.Add_SelectedIndexChanged({GetServiceDetails})

#Show the form
$AppForm.ShowDialog()

#Garbage Collection
$AppForm.Dispose()
