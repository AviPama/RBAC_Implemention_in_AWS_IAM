## **About This Project**  
This project implements **Role-Based Access Control (RBAC) in AWS IAM** to enforce the principle of **least privilege**. It defines **IAM users, groups, roles, and permissions** to ensure secure access to AWS resources.  

### **Key Features**  
✅ **IAM User & Group Management** – Create users and organize them into groups based on roles.  
✅ **Role & Policy Assignment** – Define fine-grained permissions for accessing specific AWS resources.  
✅ **Least Privilege Enforcement** – Restrict users to only the permissions necessary for their role.  
✅ **Access Control Testing** – Verify permission boundaries by attempting unauthorized actions.  

### **Technologies Used**  
- **Terraform** – Infrastructure as Code (IaC) for AWS IAM configuration  
- **AWS IAM** – Identity and Access Management  
- **JSON** – IAM policy definitions  

### **How It Works**  
1. **Provision IAM Users & Groups** – Define user roles and associate them with appropriate groups.  
2. **Assign Policies** – Apply least-privilege policies to restrict access to only necessary resources.  
3. **Test Access** – Attempt unauthorized actions to validate security measures.   
