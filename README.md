



## ✅ **GitHub Actions & CI/CD with YAML – Summary**

### **Lesson Overview**

#### **1. YAML Basics**

* YAML is a readable format used for GitHub Actions workflows.
* Core concepts: indentation, key-value pairs, lists.

#### **2. Workflow Components**

* **Workflow File:** Located in `.github/workflows/`, e.g., `main.yaml`.
* **Jobs:** Tasks like build, test, deploy.
* **Steps:** Individual commands within jobs.
* **Actions:** Reusable scripts or commands (e.g., `actions/checkout@v4`).
* **Events:** Triggers like `push`, `pull_request`.
* **Runners:** The virtual machine where workflows run, e.g., `ubuntu-latest`.

---

### **Module 3: Implementing Continuous Integration**

#### **Lesson 1: Building and Testing Code**

##### **Objectives:**

* Automate code build and test processes using GitHub Actions.

##### **Build Job Setup:**

* Define a job named `build` using `runs-on: ubuntu-latest`.
* Add steps:

  1. **Check out code:** `actions/checkout@v4`
  2. **Install dependencies:** `npm install`
  3. **Build project:** `npm run build`

##### **Test Step:**

* Run tests after building:

```yaml
- name: Run tests
  run: npm test
```

---

### **Advanced YAML Features**

#### **1. Environment Variables**

* Define globally, per job, or per step.

```yaml
env:
  CUSTOM_VAR: value
```

* Access using `$CUSTOM_VAR`.

#### **2. Secrets**

* Set in GitHub repo settings (e.g., API tokens).
* Use them securely:

```yaml
env:
  ACCESS_TOKEN: ${{ secrets.ACCESS_TOKEN }}
```

#### **3. Conditional Execution**

* Run jobs/steps based on conditions:

```yaml
if: github.event_name == 'push' && github.ref == 'refs/heads/main'
```

#### **4. Sharing Outputs Between Steps**

* Pass data between steps in the same job:

```yaml
- id: step-one
  run: echo "value=hello" >> $GITHUB_OUTPUT

- id: step-two
  run: echo "Value: ${{ steps.step-one.outputs.value }}"
```

---

### **Lesson 2: Configuring Build Matrices**

#### **Objectives:**

* Run tests across multiple environments (e.g., Node versions, OS).
* Enable parallel builds for efficient CI.

---

### **Key Takeaways**

* GitHub Actions enables powerful CI/CD automation using YAML.
* Proper structure and reusable actions improve workflow efficiency.
* Advanced YAML features (env vars, secrets, conditions, outputs) provide flexibility, security, and control.
