Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$FormObject=[System.Windows.Forms.Form]
$LabelObject=[System.Windows.Forms.Label]
$ButtonObject=[System.Windows.Forms.Button]
$ComboBoxObject=[System.Windows.Forms.ComboBox]
$GroupBoxObject=[System.Windows.Forms.GroupBox]
$CheckBoxObject=[System.Windows.Froms.Checkbox]

$DefaultFont='Verdana,12'

#GUI Põhi
$AppForm = New-Object $FormObject
$AppForm.ClientSize='550,700'
$AppForm.Text='Eeriku PS TOOLBOX'
$AppForm.BackColor='#000000'
$AppForm.Font=$DefaultFont


$LabelService=New-Object $LabelObject

#Power Options kast
$GroupBoxPowerOptions = New-Object $GroupBoxObject
$GroupBoxPowerOptions.Text = 'Power Options'
$GroupBoxPowerOptions.ForeColor = '#ffffff'
$GroupBoxPowerOptions.BackColor = '#2e2c2c'
$GroupBoxPowerOptions.Size = New-Object System.Drawing.Size(400, 150)
$GroupBoxPowerOptions.Location = New-Object System.Drawing.Point(20, 20)

##Power Options 
#Shut Down button
$ButtonShutDown = New-Object $ButtonObject
$ButtonShutDown.Text='Shut Down'
$ButtonShutDown.Width='125'
$ButtonShutDown.ForeColor='#ffffff'
$ButtonShutDown.BackColor='#2e2c2c'
$ButtonShutDown.Location=New-Object System.Drawing.Point(30,55)
$ButtonShutDown.Add_Click({
    shutdown.exe /s /t 0
    [System.Windows.Forms.MessageBoxIcon].
    [System.Windows.Forms.MessageBox]::Show('Press OK To Shut Down')
})

#Restart Button
$ButtonRestart=New-Object $ButtonObject
$ButtonRestart.Text='Restart'
$ButtonRestart.Width='125'
$ButtonRestart.ForeColor='#ffffff'
$ButtonRestart.BackColor='#2e2c2c'
$ButtonRestart.Location=New-Object System.Drawing.Point(30,90)
$ButtonRestart.Add_Click({
    Restart.exe /r /t 0
    [System.Windows.Forms.MessageBox]::Show('Press OK To Restart')
})
#Sleep Button
$ButtonSleep=New-Object $ButtonObject
$ButtonSleep.Text='Sleep'
$ButtonSleep.Width='125'
$ButtonSleep.ForeColor='#ffffff'
$ButtonSleep.BackColor='#2e2c2c'
$ButtonSleep.Location=New-Object System.Drawing.Point(30,125)
$ButtonSleep.Add_Click({
    rundll32.exe powrprof.dll,SetSuspendState 0,1,0
})
$AppForm.Controls.Add($ButtonSleep)
$AppForm.Controls.Add($ButtonRestart)
$AppForm.Controls.Add($ButtonShutDown)
$AppForm.Controls.Add($ButtonSleep)

##Kasulikud Installerid

#Kasulike installerite groupbox
$GroupBoxForInstallers=New-Object $GroupBoxObject
$GroupBoxForInstallers.Text = 'Useful Installers'
$GroupBoxForInstallers.ForeColor = '#ffffff'
$GroupBoxForInstallers.BackColor = '#2e2c2c'
$GroupBoxForInstallers.Size = New-Object System.Drawing.Size(400, 150)
$GroupBoxForInstallers.Location = New-Object System.Drawing.Point(20, 180)

#7Zip paigaldaja
$7ZipInstall=New-Object $CheckBoxObject
$7ZipInstall.Text='7Zip'
$7ZipInstall.Width='125'
$7ZipInstall.ForeColor='#ffffff'
$7ZipInstall.BackColor='#2e2c2c'
$7ZipInstall.Location=New-Object System.Drawing.Point(30,210)

$CheckBox7ZipInstall.Controls.Add($CheckBox7ZipInstall)
$AppForm.Controls.Add($7ZipInstall)
$AppForm.Controls.Add($GroupBoxForInstallers)
$AppForm.Controls.Add($GroupBoxPowerOptions)



$AppForm.ShowDialog()
$AppForm.Dispose()
