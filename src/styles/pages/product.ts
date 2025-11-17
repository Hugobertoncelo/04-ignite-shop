import { styled } from "..";

export const ProductContainer = styled("main", {
  display: "grid",
  gridTemplateColumns: "1fr 1fr",
  alignItems: "stretch",
  gap: "4rem",

  maxWidth: 1180,
  margin: "0 auto",
  padding: "0 1rem",

  "@md": {
    gridTemplateColumns: "1fr",
    gap: "2rem",
    padding: "0 1rem",
  },

  "@sm": {
    gap: "1.5rem",
    padding: "0 1rem",
  },
});

export const ImageContainer = styled("div", {
  width: "100%",
  maxWidth: 576,
  height: 656,
  background: "linear-gradient(180deg, #1ea483 0%, #7465d4 100%)",
  borderRadius: 8,
  padding: "0.25rem",

  display: "flex",
  alignItems: "center",
  justifyContent: "center",

  "@md": {
    maxWidth: "100%",
    height: 400,
    margin: "0 auto",
  },

  "@sm": {
    height: 300,
  },

  img: {
    objectFit: "cover",
    width: "100%",
    height: "100%",
  },
});

export const ProductDetails = styled("div", {
  display: "flex",
  flexDirection: "column",

  "@md": {
    textAlign: "center",
  },

  h1: {
    fontSize: "$2xl",
    color: "$gray300",

    "@sm": {
      fontSize: "$xl",
    },
  },

  span: {
    marginTop: "1rem",
    display: "block",
    fontSize: "$2xl",
    color: "$green300",

    "@sm": {
      fontSize: "$xl",
    },
  },

  p: {
    marginTop: "2.5rem",
    fontSize: "$md",
    lineHeight: 1.6,
    color: "$gray300",

    "@md": {
      marginTop: "1.5rem",
      textAlign: "left",
    },

    "@sm": {
      fontSize: "$sm",
      marginTop: "1rem",
    },
  },

  button: {
    marginTop: "auto",
    backgroundColor: "$green500",
    border: 0,
    color: "$white",
    borderRadius: 8,
    padding: "1.25rem",
    cursor: "pointer",
    fontWeight: "bold",
    fontSize: "$md",

    "@md": {
      marginTop: "2rem",
    },

    "@sm": {
      padding: "1rem",
      fontSize: "$sm",
      marginTop: "1.5rem",
    },

    "&:disabled": {
      opacity: 0.6,
      cursor: "not-allowed",
    },

    "&:not(:disabled):hover": {
      backgroundColor: "$green300",
    },
  },
});
