var Socketjs = function(url){

var Socket = "MozWebSocket" in window ? MozWebSocket : WebSocket;

 var conexion = new Socket(url);
 var callbacks = {};

 this.bind = function(evt_accion, callback){

   callbacks[evt_accion] = callbacks[evt_accion] || [];
   callbacks[evt_accion].push(callback);

 };

 this.send = function(evt_accion, evt_mensaje, evt_actor, evt_canal_id){
     var object = {'accion':evt_accion, 'mensaje': evt_mensaje, 'actor': evt_actor, 'canal_id': evt_canal_id};
     conexion.send( JSON.stringify(object) );
 };

 conexion.onmessage = function(evt){
   var json = JSON.parse(evt.data)
   dispatch(json.accion, json)
   
 };

 conexion.onclose = function(){dispatch('close',null)}
 conexion.onopen = function(){dispatch('open',null)}

 var dispatch = function(evt_accion, message){
   var cadena = callbacks[evt_accion];
   console.log(evt_accion);
   if(typeof cadena == 'undefined') return;
   for(var i = 0; i < cadena.length; i++){
     cadena[i]( message )
    
   } 
 }

};