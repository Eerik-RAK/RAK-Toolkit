Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$FormObject=[System.Windows.Forms.Form]
$LabelObject=[System.Windows.Forms.Label]
$ButtonObject=[System.Windows.Forms.Button]
$ComboBoxObject=[System.Windows.Forms.ComboBox]
$GroupBoxObject=[System.Windows.Forms.GroupBox]
$CheckBoxObject=[System.Windows.Froms.Checkbox]
$TabObject=[System.Windows.Forms.TabPage]
$TabControl=[System.Windows.Froms.TabControl]

$DefaultFont='Verdana,12'

#GUI Põhi
$AppForm = New-Object $FormObject
$AppForm.ClientSize='550,670'
$AppForm.Text='Eeriku PS TOOLBOX'
$AppForm.BackColor='#000000'
$AppForm.Font=$DefaultFont
$LabelService=New-Object $LabelObject



#Power Options kast
$GroupBoxPowerOptions = New-Object $GroupBoxObject
$GroupBoxPowerOptions.Text = 'Power Options'
$GroupBoxPowerOptions.ForeColor = '#ffffff'
$GroupBoxPowerOptions.BackColor = '#2e2c2c'
$GroupBoxPowerOptions.Size = New-Object System.Drawing.Size(160, 150)
$GroupBoxPowerOptions.Location = New-Object System.Drawing.Point(13, 25)

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
$GroupBoxForInstallers.Size = New-Object System.Drawing.Size(300, 300)
$GroupBoxForInstallers.Location = New-Object System.Drawing.Point(13, 350)

$InstallButton=New-Object $ButtonObject
$InstallButton.Text='Install Selection'
$InstallButton.Width='125'
$InstallButton.ForeColor='#ffffff'
$InstallButton.BackColor='#2e2c2c'
$InstallButton.Location=New-Object System.Drawing.Point(200,400)
$InstallButton.Size=New-Object System.Drawing.Size(150,25)
$InstallButton.Add_Click({
    
    [System.Windows.Forms.MessageBox]::Show('Installing Tura')
})


$DeselectButton=New-Object $ButtonObject
$DeselectButton.Text='Deselect'
$DeselectButton.Width='125'
$DeselectButton.ForeColor='#ffffff'
$DeselectButton.BackColor='#2e2c2c'
$DeselectButton.Location=New-Object System.Drawing.Point(390,400)
$DeselectButton.Size=New-Object System.Drawing.Size(100,25)
$DeselectButton.Add_Click({
    
    [System.Windows.Forms.MessageBox]::Show('Deselected Nahhuj')
})


$AppForm.Controls.Add($InstallButton)
$AppForm.Controls.Add($DeselectButton)


#Running programmide groupbox
$GroupBoxForInstallers=New-Object $GroupBoxObject
$GroupBoxForInstallers.Text='Useful Installers'
$GroupBoxForInstallers.ForeColor='#ffffff'
$GroupBoxForInstallers.BackColor='#2e2c2c'
$GroupBoxForInstallers.Size=New-Object System.Drawing.Size(523, 250)
$GroupBoxForInstallers.Location=New-Object System.Drawing.Point(13, 400)

$AppForm.Controls.Add($GroupBoxForInstallers)

#7Zip paigaldaja
$7ZipInstall=New-Object $CheckBoxObject
$7ZipInstall.Text='7-Zip'
$7ZipInstall.Width='125'
$7ZipInstall.ForeColor='#ffffff'
$7ZipInstall.BackColor='#2e2c2c'
$7ZipInstall.Location=New-Object System.Drawing.Point(25,430)

$CheckBox7ZipInstall.Controls.Add($7ZipInstall)
$AppForm.Controls.Add($7ZipInstall)

#KeePassX Installer
$KeePassXInstall=New-Object $CheckBoxObject
$KeePassXInstall.Text='KeePassX'
$KeePassXInstall.Width='125'
$KeePassXInstall.ForeColor='#ffffff'
$KeePassXInstall.BackColor='#2e2c2c'
$KeePassXInstall.Location=New-Object System.Drawing.Point(25,460)

$CheckBoxKeePassX.Controls.Add($KeePassXInstall)
$Appform.Controls.Add($KeePassXInstall)

#Discord Installer
$DiscordInstall=New-Object $CheckBoxObject
$DiscordInstall.Text='Discord'
$DiscordInstall.Width='125'
$DiscordInstall.ForeColor='#ffffff'
$DiscordInstall.BackColor='#2e2c2c'
$DiscordInstall.Location=New-Object System.Drawing.Point(25,490)

$CheckBoxDiscord.Controls.Add($DiscordInstall)
$AppForm.Controls.Add($DiscordInstall)


#Notepad++ Installer
$NotepadInstall=New-Object $CheckBoxObject
$NotepadInstall.Text='Notepad++'
$NotepadInstall.Width='125'
$NotepadInstall.ForeColor='#ffffff'
$NotepadInstall.BackColor='#2e2c2c'
$NotepadInstall.Location=New-Object System.Drawing.Point(25,520)

$CheckBoxNotepad.Controls.Add($NotepadInstall)
$AppForm.Controls.Add($NotepadInstall)


#VS-Code Installer
$VSCodeInstall=New-Object $CheckBoxObject
$VSCodeInstall.Text='VS-Code'
$VSCodeInstall.Width='125'
$VSCodeInstall.ForeColor='#ffffff'
$VSCodeInstall.BackColor='#2e2c2c'
$VSCodeInstall.Location=New-Object System.Drawing.Point(25,550)

#Chrome Install
$ChromeInstall=New-Object $CheckBoxObject
$ChromeInstall.Text='Chrome'
$ChromeInstall.Width='125'
$ChromeInstall.ForeColor='#ffffff'
$ChromeInstall.BackColor='#2e2c2c'
$ChromeInstall.Location=New-Object System.Drawing.Point(25,580)

$CheckBoxNotepad.Controls.Add($ChromeInstall)
$AppForm.Controls.Add($ChromeInstall)

#FireFox Install
$FireFoxInstall=New-Object $CheckBoxObject
$FireFoxInstall.Text='FireFox'
$FireFoxInstall.Width='125'
$FireFoxInstall.ForeColor='#ffffff'
$FireFoxInstall.BackColor='#2e2c2c'
$FireFoxInstall.Location=New-Object System.Drawing.Point(25,610)

$CheckBoxNotepad.Controls.Add($FireFoxInstall)
$AppForm.Controls.Add($FireFoxInstall)



$CheckBoxVSCode.Controls.Add($VSCodeInstall)
$AppForm.Controls.Add($VSCodeInstall)

#Running programmide groupbox
$GroupBoxForInstallers=New-Object $GroupBoxObject
$GroupBoxForInstallers.Text='Useful Installers'
$GroupBoxForInstallers.ForeColor='#ffffff'
$GroupBoxForInstallers.BackColor='#2e2c2c'
$GroupBoxForInstallers.Size=New-Object System.Drawing.Size(523, 250)
$GroupBoxForInstallers.Location=New-Object System.Drawing.Point(13, 400)

$AppForm.Controls.Add($GroupBoxForInstallers)

#Drop Down listi script
$ComboBoxService=New-Object $ComboBoxObject
$ComboBoxService.Width='250'
$ComboBoxService.Location=New-Object System.Drawing.Point(210,55)

Get-Service | ForEach-Object {$ComboBoxService.Items.Add($_.Name)}
$ComboBoxService.text='Pick a Service'

$LabelName=New-Object $LabelObject
$LabelName.Text=""
$LabelName.AutoSize=$true
$LabelName.Location=New-Object System.Drawing.Point(290,80)

$LabelForStatus=New-Object $LabelObject
$LabelForStatus.Text='Status :'
$LabelForStatus.AutoSize=$true
$LabelForStatus.ForeColor='#ffffff'
$LabelForStatus.BackColor='#2e2c2c'
$LabelForStatus.Location=New-Object System.Drawing.Point(210,107)

$LabelStatus=New-Object $LabelObject
$LabelStatus.Text=''
$LabelStatus.AutoSize=$true
$LabelStatus.ForeColor='#ffffff'
$LabelStatus.BackColor='#2e2c2c'
$LabelStatus.Location=New-Object System.Drawing.Point(290,107)



$AppForm.Controls.AddRange(@($LabelService,$ComboBoxService,$LabelName,$LabelForStatus,$LabelStatus))

#Süsteemi teenuste 
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

$ComboBoxService.Add_SelectedIndexChanged({GetServiceDetails})

#Mingi Sita kast
$MingiSitaKast = New-Object $GroupBoxObject
$MingiSitaKast.Text = 'Mingi Huinjaa'
$MingiSitaKast.ForeColor = '#ffffff'
$MingiSitaKast.BackColor = '#2e2c2c'
$MingiSitaKast.Size = New-Object System.Drawing.Size(160, 170)
$MingiSitaKast.Location = New-Object System.Drawing.Point(13, 200)

$GroupBoxObject.Controls.Add($MingiSitaKast)
$AppForm.Controls.Add($MingiSitaKast)



$AppForm.Controls.Add($GroupBoxForStatus)
$AppForm.Controls.Add($GroupBoxForInstallers)
$AppForm.Controls.Add($GroupBoxPowerOptions)

$AppForm.ShowDialog()
$AppForm.Dispose()