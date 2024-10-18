{
  "$GMObject":"",
  "%Name":"obj_patroller",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":1,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_patroller",
  "overriddenProperties":[
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_guard_walking","path":"objects/obj_guard_walking/obj_guard_walking.yy",},"propertyId":{"name":"hsp","path":"objects/obj_guard_walking/obj_guard_walking.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"4",},
  ],
  "parent":{
    "name":"Objects",
    "path":"folders/Objects.yy",
  },
  "parentObjectId":{
    "name":"obj_guard_walking",
    "path":"objects/obj_guard_walking/obj_guard_walking.yy",
  },
  "persistent":false,
  "physicsAngularDamping":0.1,
  "physicsDensity":0.5,
  "physicsFriction":0.2,
  "physicsGroup":1,
  "physicsKinematic":false,
  "physicsLinearDamping":0.1,
  "physicsObject":false,
  "physicsRestitution":0.1,
  "physicsSensor":false,
  "physicsShape":1,
  "physicsShapePoints":[],
  "physicsStartAwake":true,
  "properties":[
    {"$GMObjectProperty":"v1","%Name":"attack_range","filters":[],"listItems":[],"multiselect":false,"name":"attack_range","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"100","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"fly_path","filters":[
        "GMPath",
      ],"listItems":[],"multiselect":false,"name":"fly_path","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"path_flyer","path":"paths/path_flyer/path_flyer.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"path_flyer","varType":5,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"spr_followguard",
    "path":"sprites/spr_followguard/spr_followguard.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}