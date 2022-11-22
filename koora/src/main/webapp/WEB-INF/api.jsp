<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<input id="search" ><button onclick="getrecepe(document.getElementById('search').value)">Search</button>
<div id="output">
    <script>
        function getrecepe(x){
            const options = {
	method: 'GET',
	headers: {
		'X-RapidAPI-Key': 'e96796d8f9mshf5e750bee34fd36p143071jsn177a35b49e05',
		'X-RapidAPI-Host': 'api-football-v1.p.rapidapi.com'
	}
};

fetch('https://api-football-v1.p.rapidapi.com/v3/teams?search='+x, options)
	.then(response => response.json())
	.then(res => {
        console.log(res);
        
        for(var i=0; i<res.response.length;i++){
        document.getElementById("output").innerHTML+="<h1>"+res.response[i].team.name+"</h1><br><img src='"+res.response[i].team.logo+"' width='400' /><br>Ready in "+res.response[i].team.country
    }
})
	.catch(err => console.error(err));
        }
        </script>

</body>
</html>