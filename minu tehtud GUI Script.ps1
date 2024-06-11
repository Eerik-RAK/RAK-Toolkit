Add-Type -AssemblyName System.Windows.Forms

$FormObject=[System.Windows.Forms.Form]
$LabelObject=[System.Windows.Forms.Label]
$ButtonObject=[System.Windows.Forms.Button]
$ComboBoxObject=[System.Windows.Forms.ComboBox]
$CheckBoxObject=[System.Windows.Froms.Checkbox]

$DefaultFont='Verdana,12'

#GUI Põhi
$AppForm = New-Object $FormObject
$AppForm.ClientSize='450,600'
$AppForm.Text='Eeriku PS TOOLBOX'
$AppForm.BackColor='#BFBFBF'
$AppForm.Font=$DefaultFont

$LabelService=New-Object $LabelObject


##Power Options 

$LabelService=New-Object $LabelObject
$LabelService.Text='Power Options'
$LabelService.AutoSize=$True
$LabelService.Location=New-Object System.Drawing.Point(20,20)
$AppForm.Controls.Add($LabelService)

#Shut Down button
$ButtonShutDown = New-Object $ButtonObject
$ButtonShutDown.Text='Shut Down'
$ButtonShutDown.Width='125'
$ButtonShutDown.Location=New-Object System.Drawing.Point(20,50)
$ButtonShutDown.Add_Click({
    shutdown.exe /s /t 0
    [System.Windows.Forms.MessageBoxIcon].
    [System.Windows.Forms.MessageBox]::Show('Press OK To Shut Down')
})

#Restart Button
$ButtonRestart=New-Object $ButtonObject
$ButtonRestart.Text='Restart'
$ButtonRestart.Width='125'
$ButtonRestart.Location=New-Object System.Drawing.Point(20,80)
$ButtonRestart.Add_Click({
    Restart.exe /r /t 0
    [System.Windows.Forms.MessageBox]::Show('Press OK To Restart')
})
#Sleep Button
$ButtonSleep=New-Object $ButtonObject
$ButtonSleep.Text='Sleep'
$ButtonSleep.Width='125'
$ButtonSleep.Location=New-Object System.Drawing.Point(20,110)
$ButtonSleep.Add_Click({
    rundll32.exe powrprof.dll,SetSuspendState 0,1,0
})
$AppForm.Controls.Add($ButtonSleep)
$AppForm.Controls.Add($ButtonRestart)
$AppForm.Controls.Add($ButtonShutDown)
$AppForm.Controls.Add($ButtonSleep)

##Kasulikud Installerid

$LabelService=New-Object $LabelObject
$LabelService.Text='Useful Installers'
$LabelService.AutoSize=$True
$LabelService.Location=New-Object System.Drawing.Point(20,160)
$AppForm.Controls.Add($LabelService)


#7Zip Installer

$7ZipCheckBox=New-Object $CheckBoxObject
$7ZipCheckBox.Text='7Zip'
$7ZipCheckBox.AutoSize=$True
$7ZipCheckBox.Location=New-Object System.Drawing.Point(150,200)

$Labelfor7Zip=New-Object $LabelObject
$Labelfor7Zip.Text='7Zip Installer:'
$Labelfor7Zip.AutoSize=$True
$Labelfor7Zip.Location=New-Object System.Drawing.Point(20,200)
$AppForm.Controls.Add($Labelfor7Zip)



$AppForm.ShowDialog()
$AppForm.Dispose()
