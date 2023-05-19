%dw 2.0
output application/json
---
payload map (
    $  update {
        case .coverage -> ($ ++ $.test) -"test"
    }
 )

//here i want to remove the test from all the objects so first we have used map funtion to map the data and applied an update function removes the "test" string from the end of the value of the test property using the - operator generally the update is used to the coverage property of the payload object.