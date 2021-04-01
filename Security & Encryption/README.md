## Encryption in flight (SSL)
- data is encrypted before sending and decrypted after receiving
- SSL certificates help with encryption (HTTPS)
- Encryption in glight ensures no MITM can happen

## Server Side Encryption at rest
- data is encrypt after being received by the server
- data is decrypt before being sent
- It is stored in an encrypted form thanks to a key
- The encrypt/decrypt keys must be managed somewhere and the server must have access to it

## Client side encrypt
- data is encrypted by the client and never decrypted by the server
- data will be decrypted by a receiving the data
- could leverage Envelope Encryption

## AWS KMS (Key Management Service)
- Anytime you hear encrypt for an AWS Service, its most likely KMS
- Easy way to control access to your data, AWS manages keys for us
- Fully integrated with IAM for authorization
- Seamlessly integrated into:
    - Amazon EBS: encrypt volumes
    - Amazon S3: server side encryption of data
    - Amazon Redshift: encryption of data
    - Amazon RDS: encryption of data
    - Amazon SSM: Parameter store
    - Etc...
- But you can also use the CLI/SDK
- Able to fully manage the keys & policies:
    - Create
    - Rotation policies
    - Disable
    - Enable
- Able to audit key usage (using CloudTrail)
- Three types of Customer Master Key (CMK):
    - AWS Managed Service Default CMK: free    
    - User Keys created in KMS: $1/month
    - User Keys imported (must be 256-bit symmetric key): $1/month
- + pay for API call to KMS ($0.03/10000 calls)
- Anytime you need to share sensitive information... use KMS
    - database passwords
    - credentials to external service
    - private key of SSL certificates
- The value in KMS is that the CMK used to encrypt data can never be retrieved by the user, and the CMK can be rotated for extra security
- Never ever store your secrets in plaintext, especially in your code!
- Encrypted secrets can be stored in the code/environment variables
- KMS can only help in encrypting up to 4KB of data per call
- If data > 4kb, use envelope encryption
- To give access to KMS to someone:
    - make sure the key policy allows the user
    - make sure the IAM Policy allows the API calls

### KMS - Customer Master Key (CMK) Types:
- Symmetric (AES-256 keys)
    - first offering of KMS, single encryption key that is used to Encrypt and Decrypt
    - AWS services that are integrated with KMS use Symmetric CMKs
    - Necessary for envelope encryption
    - You never get access to the Key unencrypted (must call KMS API to use)
- Asymmetric (RSA & ECC key pairs)
    - Public (Encrypt) and Private Key (Decrypt) pair
    - Used for Encrypt/Decrypt, or Sign/Verify operations
    - The public key is downloadable, but you can't access the Primary Key unencrypted
    - Use case: encryption outside of AWS by users who can't call the KMS API

## Copying Snapshots across regions

Region a --> Region b
Region a need create snapshot into s3, transfer to another s3 on another region and restore this snapshot using kms

1. create a snapshot, encrypted with your own CMK
2. attach a KMS key Policy to authorize cross-account access
3. Share the encrypted snapshot
4. (in target) Create a copy of the Snapshot, encrypt it with a KMS Key in your account
5. Create a volume from the snapshot

## envelope file
encrypt up to 4kb
generatedatakey dek
generatedatakeywithoutPlainText
decrypt
generateRandom