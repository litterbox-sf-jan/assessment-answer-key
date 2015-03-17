function unique(arr) {
  return arr.reduce(function(uniqueArr, value){
    if (uniqueArr.indexOf(value) === -1) {
      uniqueArr.push(value);
    }
    return uniqueArr;
  }, []);
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
