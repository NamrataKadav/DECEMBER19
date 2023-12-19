public class SampleClass {

    // Properties (variables)
    private String name;
    private Integer age;

    // Constructor
    public SampleClass(String initialName, Integer initialAge) {
        this.name = initialName;
        this.age = initialAge;
    }

    // Getter methods
    public String getName() {
        return this.name;
    }

    public Integer getAge() {
        return this.age;
    }

    // Setter methods
    public void setName(String newName) {
        this.name = newName;
    }

    public void setAge(Integer newAge) {
        this.age = newAge;
    }

    // Example method
    public String getGreeting() {
        return 'Hello, ' + this.name + '! You are ' + this.age + ' years old.';
    }
}