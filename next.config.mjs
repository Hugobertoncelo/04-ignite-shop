/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,

  experimental: {
    images: {
      allowfutureImage: true,
    }
  }
}

export default nextConfig;
