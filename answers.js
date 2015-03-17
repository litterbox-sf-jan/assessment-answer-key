function unique(arr){
  var newArr = []
  arr.forEach(function(item){
    if(newArr.indexOf(item) === -1){
      newArr.push(item);
    }
  })
  return newArr
}

function capitalize(string){
  return string[0].toUpperCase() + string.slice(1).toLowerCase();
}

function titleize(string){
  return string.split(" ").map(function(data){
   return capitalize(data)
  });
}

function sampleAJAXPost(){
  $.ajax({
      type: "POST",
      url: "/users.json",
      data: {username: student},
      success: function(){
       console.log(""All Done!""),
      }
  });
}
