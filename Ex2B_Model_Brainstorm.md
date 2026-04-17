# Requirements and Conceptual Model
1 a) Angel Osorio, Ceyhun Ugur, Paul Lopez, Sultan Simsek, David Ocampo
1 b) The "end user" is the business owner, Lana, and she would be tracking the data of her business. The categories would be Time, Cost, Client( Phone number and name)
1 c) 
Client- Client ID, Name, Phone Number, Location
Dog- Dog ID, Client ID, Dog breed, Age of dog, Dog name 
Service- Service ID, Duration of service, datetime of service, Cost per service, Payment ID
Payment- Payment ID, Payment Method, Client ID, Date/Time of Payment

2 a) The main entities would be Client, Dog, Service, and Payment.
2 b) The attributes of the entities 
For Client- Client ID, Name, Phone Number, Location
For Dog- Client ID, Dog ID, Dog breed, Age of dog, Dog name, 
For Service- Dog ID, Duration of service, time of service, Cost per service, Payment ID
2 c) Client ID and Dog ID to create the relationship between the tables. 
2 d) The possible many to many relationship could be in between service and oayment table, there is no need for doing that right now but we can create a resolving table of Service_Payment if there are spilt transactions for one service, so that we can track Service ID's with every Payment ID made. 





