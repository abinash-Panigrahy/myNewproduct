#!/bin/bash

# Create React App with Vite
npm create vite@latest client --template react
cd client

# # Initialize project
npm install tailwindcss @tailwindcss/vite

# Install dependencies
npm install react-router-dom axios react-icons

# # Setup Tailwind in CSS
# echo '@tailwind base;\n@tailwind components;\n@tailwind utilities;' > src/index.css

# # Tailwind config update
# sed -i '' 's/content: \[\]/content: \[".\/index.html", ".\/src\/*\*\/\*.{js,jsx}"\]/' tailwind.config.js 2>/dev/null || \
# sed -i 's/content: \[\]/content: \[".\/index.html", ".\/src\/*\*\/\*.{js,jsx}"\]/' tailwind.config.js

# Folder Structure
mkdir -p src/{assets,components,features/{auth,user,hostel,admin,superadmin},hooks,context,pages,services,styles}
touch src/{App.jsx,main.jsx,routes.jsx}
touch src/styles/index.css

# Feature Placeholder Files
touch src/components/{Navbar.jsx,Footer.jsx,HostelCard.jsx,SearchBar.jsx,RatingStars.jsx,ProtectedRoute.jsx}
touch src/features/auth/{Login.jsx,Register.jsx,GoogleAuth.jsx,otpVerification.jsx}
touch src/features/user/{UserDashboard.jsx,UserProfile.jsx,Recommendations.jsx}
touch src/features/hostel/{HostelList.jsx,HostelDetails.jsx,ReviewSection.jsx}
touch src/features/admin/{HostelAdminDashboard.jsx,ManageStudents.jsx}
touch src/features/superadmin/SuperAdminPanel.jsx
touch src/context/AuthContext.jsx
touch src/hooks/useAuth.js
touch src/services/{authService.js,hostelService.js,paymentService.js}
touch src/pages/{Home.jsx,Explore.jsx,About.jsx,Contact.jsx}

# Success Message
echo "✅ Project setup complete! Now run:"
echo "cd client && npm run dev"
