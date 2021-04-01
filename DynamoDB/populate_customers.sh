#!/bin/bash

echo "Started at $(date)"

aws dynamodb put-item --table-name customers --item '{"id": {"S": "a9dbdc75-d8cd-4353-8549-3d26548fe318"}, "name": {"S": "Rodrigo"},    "gender": {"S": "Male"}}' --return-consumed-capacity TOTAL
aws dynamodb put-item --table-name customers --item '{"id": {"S": "702ec710-b168-489a-95fd-90972629508c"}, "name": {"S": "Michele"},    "gender": {"S": "Female"}}' --return-consumed-capacity TOTAL
aws dynamodb put-item --table-name customers --item '{"id": {"S": "be0a1d53-929b-42b0-a5a1-4ed5de820c01"}, "name": {"S": "Laura"},      "gender": {"S": "Female"} }' --return-consumed-capacity TOTAL
aws dynamodb put-item --table-name customers --item '{"id": {"S": "d95841da-89f7-4477-85f5-eeef5fabfba2"}, "name": {"S": "Sophia"},     "gender": {"S": "Female"} }' --return-consumed-capacity TOTAL
aws dynamodb put-item --table-name customers --item '{"id": {"S": "f43f69b1-5efb-4028-8cac-99512d2238ea"}, "name": {"S": "Plankton"},   "gender": {"S": "Male"} }' --return-consumed-capacity TOTAL
aws dynamodb put-item --table-name customers --item '{"id": {"S": "5ace3e8e-d88a-42af-9fe0-121d38d591e8"}, "name": {"S": "Mauro"},      "gender": {"S": "Male"} }' --return-consumed-capacity TOTAL
aws dynamodb put-item --table-name customers --item '{"id": {"S": "29f3ff05-433b-4809-8493-b1c6df7999f5"}, "name": {"S": "Selma"},      "gender": {"S": "Female"} }' --return-consumed-capacity TOTAL
aws dynamodb put-item --table-name customers --item '{"id": {"S": "b76b202d-df07-487b-a8c7-29f9101ad3ab"}, "name": {"S": "Isabela"},    "gender": {"S": "Female"} }' --return-consumed-capacity TOTAL
aws dynamodb put-item --table-name customers --item '{"id": {"S": "45947093-9bd8-4cd0-938e-cb61d59c223b"}, "name": {"S": "Jéssica"},    "gender": {"S": "Female"} }' --return-consumed-capacity TOTAL
aws dynamodb put-item --table-name customers --item '{"id": {"S": "38a3df2e-de35-41d4-b8b8-fe015d7403e9"}, "name": {"S": "Sérgio"},     "gender": {"S": "Male"} }' --return-consumed-capacity TOTAL
aws dynamodb put-item --table-name customers --item '{"id": {"S": "33dabffc-e7c7-4915-ba36-6d2a0406bf02"}, "name": {"S": "Daise"},      "gender": {"S": "Female"} }' --return-consumed-capacity TOTAL
aws dynamodb put-item --table-name customers --item '{"id": {"S": "d60994ce-0606-4e9a-91c5-c521e059031d"}, "name": {"S": "Francisco"},  "gender": {"S": "Male"} }' --return-consumed-capacity TOTAL
aws dynamodb put-item --table-name customers --item '{"id": {"S": "24eca884-a116-4cf7-974e-7c2a44b7aa45"}, "name": {"S": "Thais"},      "gender": {"S": "Female"} }' --return-consumed-capacity TOTAL
aws dynamodb put-item --table-name customers --item '{"id": {"S": "9e5be20f-ebcf-4375-b79a-8c4f81e10bd9"}, "name": {"S": "Thiago"},     "gender": {"S": "Male"} }' --return-consumed-capacity TOTAL
aws dynamodb put-item --table-name customers --item '{"id": {"S": "313f14c5-5dab-44f2-bbde-b60ab662d9fc"}, "name": {"S": "Pedro"},      "gender": {"S": "Male"} }' --return-consumed-capacity TOTAL
aws dynamodb put-item --table-name customers --item '{"id": {"S": "4f92cca2-da9c-4453-8d8a-ad4c709e7042"}, "name": {"S": "Carol"},      "gender": {"S": "Female"} }' --return-consumed-capacity TOTAL

echo "Ended at $(date)"