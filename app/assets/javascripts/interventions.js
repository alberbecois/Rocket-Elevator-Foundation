$( document ).ready(function() {
    console.log("Hello");
    $("select#cust-select").change(function(){
        console.log("I'm called");
        console.log($("select#cust-select").val());
    });
});