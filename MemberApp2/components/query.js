import { gql } from "@apollo/client";

export const GET_MEMBERS = gql`
  query GetAllMembers {
    getAllMembers {
      id
      email
      password
    }
  }
`;

export const CREATE_MEMBER = gql`
  mutation AddMember($email: String!, $password: String!) {
    addMember(memberInput: { email: $email, password: $password }) {
      id
      email
      password
    }
  }
`;

export const DELETE_MEMBER_BYID = gql`
  mutation DeleteMemberById($id: ID!) {
    deleteMemberById(id: $id) {
      id
      email
      password
    }
  }
`;
