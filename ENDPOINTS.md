# Endpoints

### Resource with given id does not exist (with GET)
Id from path variable:  (`.../resource/{id}`) 

I found two different approaches
- return 404 and empty body - `{}` or body with message `{ message : 'Resource with given id not found' } `,
- return 200 or 204 and empty body (`{}`).

The first one seems to be more popular.
The only downside is that 4.. codes indicate client error but in this case there is no error on client side,
because data provided by client is correct. For example 404 should be returned when client would want to consume 
endpoint that does not exist (`.../resorce/{id}`).

I decided to return 404 with message in body

### Object passed in body (in PUT, POST) has invalid / missing property

I decided to return 422

## Parts
### GET `{{spring-path}}/parts`
200
```json
[
      {
        "name": "myBrakes",
        "manufacturer": {
          "name": "Xtrac",
          "headquarters": "Thatcham, United Kingdom"
        },
        "car": {
          "name": "W13"
        },
        "cost": 3000.00,
        "estimatedReplacementDate": "2022-12-23"
      },
      {
        "name": "myBrakes second",
        "manufacturer": {
          "name": "Xtrac",
          "headquarters": "Thatcham, United Kingdom"
        },
        "car": {
          "name": "W13"
        },
        "cost": 3000.00,
        "estimatedReplacementDate": "2022-12-23"
      }, ...
]
```

### GET `{{spring-path}}/parts/{validId}`
200
```json
{
    "name": "breaks",
    "manufacturer": {
        "name": "Xtrac",
        "headquarters": "Thatcham, United Kingdom"
    },
    "car": {
        "name": "C42"
    },
    "cost": 3000.00,
    "estimatedReplacementDate": "2022-12-20"
}
```

### GET `{{spring-path}}/parts/{invalidId}`
404
```json
{
    "message": "Part with name kfjdsal not found"
}
```

### POST `{{spring-path}}/parts`

Request body:
```json
{
    "name": "myBrakes",
    "cost": 3000,
    "estimatedReplacementDate": "2022-12-23",
    "car": {
        "name": "W13"
    },
    "manufacturer": {
        "name": "Xtrac"
    }
}
```
If some data is missing or is invalid - return 422 code.

Response
201
```json
{
    "name": "myBrakes",
    "manufacturer": {
        "name": "Xtrac",
        "headquarters": "Thatcham, United Kingdom"
    },
    "car": {
        "name": "W13"
    },
    "cost": 3000,
    "estimatedReplacementDate": "2022-12-23"
}
```

### POST `{{spring-path}}/parts/{name}`

Request body:
```json
{
    "cost": 3000,
    "estimatedReplacementDate": "2022-12-23",
    "car": {
        "name": "W13"
    },
    "manufacturer": {
        "name": "Xtrac"
    }
}
```
If some data is missing or is invalid - return 422 code.
It will not create new Part with `name` from path is not in repository.

Response
200
```json
{
    "name": "myBrakes",
    "manufacturer": {
        "name": "Xtrac",
        "headquarters": "Thatcham, United Kingdom"
    },
    "car": {
        "name": "W13"
    },
    "cost": 3000,
    "estimatedReplacementDate": "2022-12-23"
}
```


## To consider
- should we add metadata? - probably not needed
- we could add number of objects passed in array in GET
- maybe change be response when invalid path (to be consistent we could return just ```{ message: "..." }``. Default:
```json
{
    "timestamp": "2022-11-20T10:16:42.059+00:00",
    "status": 404,
    "error": "Not Found",
    "path": "/api/v1/prts/kfjdsal"
}
```