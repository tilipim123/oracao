//var name = document.getElementById("morning_name").value;
//document.getElementById("morning_foots_attributes_0_name").value = name;
$("#morning_name").change(function(){
    $("#morning_foots_attributes_0_name").val(this.value);
});