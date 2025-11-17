import { styled } from "..";

export const Container = styled("div", {
  display: "flex",
  flexDirection: "column",
  alignItems: "flex-start",
  justifyContent: "center",
  minHeight: "100vh",
});

export const Header = styled("header", {
  padding: "2rem 1rem",
  width: "100%",
  maxWidth: 1180,
  margin: "0 auto",

  "@sm": {
    padding: "1.5rem 1rem",
  },

  img: {
    "@sm": {
      width: "100px",
      height: "auto",
    },
  },
});
