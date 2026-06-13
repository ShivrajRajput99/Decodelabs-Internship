import pandas as pd

# Load Dataset
df = pd.read_csv("Dataset for Data Analytics.csv")

print("Original Shape:", df.shape)

# Check Missing Values
print("\nMissing Values:")
print(df.isnull().sum())

# Fill Missing CouponCode values
df["CouponCode"] = df["CouponCode"].fillna("No Coupon")

# Remove Duplicate Rows
df = df.drop_duplicates()

# Convert Date Column
df["Date"] = pd.to_datetime(df["Date"], errors="coerce")

# Check Invalid Dates
invalid_dates = df["Date"].isnull().sum()
print("\nInvalid Dates:", invalid_dates)

# Remove Extra Spaces
text_columns = [
    "Product",
    "PaymentMethod",
    "OrderStatus",
    "ReferralSource"
]

for col in text_columns:
    df[col] = df[col].astype(str).str.strip()

# Save Clean Dataset
df.to_csv("Cleaned_Dataset.csv", index=False)

print("\nData Cleaning Completed Successfully!")
print("Cleaned Dataset Saved as Cleaned_Dataset.csv")