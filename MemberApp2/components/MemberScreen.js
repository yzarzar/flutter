import React from "react";
import { StyleSheet, Text, View, SafeAreaView, FlatList, TouchableOpacity } from "react-native";
import FontAwesome from "react-native-vector-icons/FontAwesome";
import { useQuery, useMutation } from "@apollo/client";
import { GET_MEMBERS, DELETE_MEMBER_BYID } from "./query";

const MemberScreen = () => {
  const { loading, error, data } = useQuery(GET_MEMBERS);
  const [deleteMemberById] = useMutation(DELETE_MEMBER_BYID);

  const handleDeleteMember = async (id) => {
    try {
      const { data } = await deleteMemberById({ variables: { id } });
      console.log("Member deleted:", data.deleteMemberById);
    } catch (error) {
      console.error("Error deleting member:", error);
    }
  };

  if (loading) {
    return (
      <View style={styles.container}>
        <Text style={styles.infoText}>Loading Data...</Text>
      </View>
    );
  }

  if (error) {
    return (
      <View style={styles.container}>
        <Text style={styles.infoText}>Error: {error.message}</Text>
      </View>
    );
  }

  const memberData = data.getAllMembers;

  return (
    <FlatList
      style={styles.list}
      data={memberData}
      renderItem={({ item }) => (
        <SafeAreaView style={styles.container}>
          <View style={styles.card1}>
            <View style={styles.card}>
              <Text style={{ fontWeight: "bold", fontSize: 14, color: "#4E252B" }}>
                Email: {item.email}
              </Text>
              <Text style={{ fontWeight: "bold", fontSize: 12, color: "grey" }}>
                Password: {item.password}
              </Text>
            </View>
            <TouchableOpacity style={styles.icon} onPress={() => handleDeleteMember(item.id)}>
              <FontAwesome name="trash" size={20} color="red" />
            </TouchableOpacity>
            <TouchableOpacity style={styles.icon}>
              <FontAwesome name="gear" size={20} color="green" />
            </TouchableOpacity>
          </View>
        </SafeAreaView>
      )}
      keyExtractor={(item) => item.id.toString()}
    />
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#E2DCE8",
    alignItems: "center",
    paddingTop: 15,
  },
  card1: {
    flexDirection: "row",
    backgroundColor: "white",
    width: 320,
    height: 60,
    borderRadius: 5,
    paddingHorizontal: 10,
    shadowColor: "black",
  },
  icon: {
    justifyContent: "center",
    width: 40,
  },
  card: {
    flex: 1,
    justifyContent: "center",
  },
});

export default MemberScreen;
