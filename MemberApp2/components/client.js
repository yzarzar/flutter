import { ApolloClient, InMemoryCache, HttpLink } from "@apollo/client";

const client = new ApolloClient({
  link: new HttpLink({ uri: 'https://spacex-production.up.railway.app/' }),
  cache: new InMemoryCache(),
});


export default client;
