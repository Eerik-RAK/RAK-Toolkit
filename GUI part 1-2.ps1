add-type -AssemblyName System.Windows.Forms

$FormObject = [System.Windows.Forms.Form]
$LabelObject = [System.Windows.Forms.Label]
$ButtonObject = [System.Windows.Forms.Button]

$HelloWorldForm=New-Object $FormObject 
$HelloWorldForm.ClientSize='500,300'
$HelloWorldForm.Text='Hello World - tutorial'
$HelloWorldForm.BackColor='#ffffff'

$lblTitle=New-Object $LabelObject
$lblTitle.Text='Hello World!'
$lblTitle.Autosize=$true
$lblTitle.Font='Verdana,25,style=Bold'
$lblTitle.ForeColor='red'
$lblTitle.Location=New-Object System.Drawing.Point(120,100)

$ButtonObject=New-Object $ButtonObject
$ButtonObject.Text="Say Hello"
$ButtonObject.Autosize=$true
$ButtonObject.Font='Verdana,14'
$ButtonObject.Location=New-Object System.Drawing.Point(190,150)

$HelloWorldForm.Controls.AddRange(@($lblTitle,$ButtonObject))

#Logic section/functions

function SayHello{
    if($lblTitle.Text -eq ''){
        ($lbltitle.Text="Hello World!")
    }else{
        ($lbltitle.Text="")
    }
}

#Add the function to the form
$ButtonObject.Add_Click({SayHello})


#displays the form
$HelloWorldForm.ShowDialog()

#Cleans up the form
$HelloWorldForm.Dispose()
