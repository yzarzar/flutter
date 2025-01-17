import * as React from "react";
import { Alert, Pressable, StyleSheet, Text, TextInput, View } from "react-native";
import { useMutation } from "@apollo/client";
import { CREATE_MEMBER } from "./query";

export default function HomeScreen() {
  const [email, setEmail] = React.useState("");
  const [password, setPassword] = React.useState("");

  const [createMember] = useMutation(CREATE_MEMBER);

  const handleAddMember = () => {
    createMember({
      variables: {
        email: email,
        password: password
      }
    }).then(() => {
      Alert.alert("Member added successfully!");
    }).catch(error => {
      Alert.alert("Error adding member:", error.message);
    });
  };

  return (
    <View style={styles.container}>
      <View style={styles.formContainer}>
        <View style={styles.form}>
          <Text style={{ paddingBottom: 10, fontSize: 15, fontWeight: "bold" }}>
            Register Form
          </Text>
          <TextInput
            style={styles.input}
            placeholder="Enter your email"
            value={email}
            onChangeText={setEmail}
          />
          <TextInput
            style={styles.input}
            placeholder="Enter your password"
            value={password}
            onChangeText={setPassword}
          />
        </View>
        <Pressable
          style={styles.button}
          onPress={handleAddMember}
        >
          <Text style={styles.text}>Add me</Text>
        </Pressable>
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#DEEFE7",
    alignItems: "center",
    justifyContent: "center",
  },
  formContainer: {
    flex: 1,
    width: 300,
    padding: 10,
    alignItems: "center",
    justifyContent: "center",
  },
  input: {
    padding: 10,
    height: 40,
    width: 200,
    borderWidth: 0.3,
    borderColor: "black",
    color: "#2B5D4B",
    borderRadius: 5,
    margin: 5,
  },
  form: {
    height: 170,
    width: 250,
    backgroundColor: "#E6D8D8",
    justifyContent: "center",
    alignItems: "center",
    borderRadius: 7,
    marginBottom: 9,
  },
  button: {
    alignItems: "center",
    justifyContent: "center",
    paddingVertical: 6,
    paddingHorizontal: 95,
    borderRadius: 100,
    elevation: 3,
    backgroundColor: "#008CFA",
  },
  text: {
    fontSize: 13,
    lineHeight: 21,
    fontWeight: "bold",
    letterSpacing: 0.25,
    color: "white",
  },
});
