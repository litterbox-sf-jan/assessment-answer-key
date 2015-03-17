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
  return string[0].toUpperCase() + string.slice(1,string.length).toLowerCase();
}

function titleize(string){
  var capitalizedArr = []
  var wordArr = string.split(" ")
  var capitalizedWord;
  for (var i = 0; i < wordArr.length; i++) {
    capitalizedWord = capitalize(wordArr[i]);
    capitalizedArr.push(capitalizedWord);
  };
  return capitalizedArr;
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