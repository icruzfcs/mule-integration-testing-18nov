import * from bat::BDD
import * from bat::Assertions
import * from bat::Mutable

---

suite("ticket-checkin-test-suite") in [

  it("Checks in a passenger ticket") in [
    PUT `https://check-in-app-icruznov18-x9pdxw.5sc6y6-4.usa-e2.cloudhub.io/api/tickets/PNR123/checkin` with {
      "headers": {
        "Accept": "application/json",
        "Content-Type": "application/json"
      },
      "body": {
        "lastName": "Smith",
        "numBags": 2
      }
    } assert [
      $.response.status mustEqual 200,
      $.response.headers.'Content-Type' mustEqual "application/json"
    ] execute [
      log($.response)
    ]
  ]

]
