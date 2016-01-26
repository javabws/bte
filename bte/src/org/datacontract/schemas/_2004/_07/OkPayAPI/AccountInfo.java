/**
 * AccountInfo.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package org.datacontract.schemas._2004._07.OkPayAPI;

public class AccountInfo  implements java.io.Serializable {
    private java.lang.Long accountID;

    private java.lang.String country_ISO;

    private java.lang.String email;

    private java.lang.String name;

    private org.datacontract.schemas._2004._07.OkPayLink_OkPayService.VerificationStatuses verificationStatus;

    private java.lang.String walletID;

    public AccountInfo() {
    }

    public AccountInfo(
           java.lang.Long accountID,
           java.lang.String country_ISO,
           java.lang.String email,
           java.lang.String name,
           org.datacontract.schemas._2004._07.OkPayLink_OkPayService.VerificationStatuses verificationStatus,
           java.lang.String walletID) {
           this.accountID = accountID;
           this.country_ISO = country_ISO;
           this.email = email;
           this.name = name;
           this.verificationStatus = verificationStatus;
           this.walletID = walletID;
    }


    /**
     * Gets the accountID value for this AccountInfo.
     * 
     * @return accountID
     */
    public java.lang.Long getAccountID() {
        return accountID;
    }


    /**
     * Sets the accountID value for this AccountInfo.
     * 
     * @param accountID
     */
    public void setAccountID(java.lang.Long accountID) {
        this.accountID = accountID;
    }


    /**
     * Gets the country_ISO value for this AccountInfo.
     * 
     * @return country_ISO
     */
    public java.lang.String getCountry_ISO() {
        return country_ISO;
    }


    /**
     * Sets the country_ISO value for this AccountInfo.
     * 
     * @param country_ISO
     */
    public void setCountry_ISO(java.lang.String country_ISO) {
        this.country_ISO = country_ISO;
    }


    /**
     * Gets the email value for this AccountInfo.
     * 
     * @return email
     */
    public java.lang.String getEmail() {
        return email;
    }


    /**
     * Sets the email value for this AccountInfo.
     * 
     * @param email
     */
    public void setEmail(java.lang.String email) {
        this.email = email;
    }


    /**
     * Gets the name value for this AccountInfo.
     * 
     * @return name
     */
    public java.lang.String getName() {
        return name;
    }


    /**
     * Sets the name value for this AccountInfo.
     * 
     * @param name
     */
    public void setName(java.lang.String name) {
        this.name = name;
    }


    /**
     * Gets the verificationStatus value for this AccountInfo.
     * 
     * @return verificationStatus
     */
    public org.datacontract.schemas._2004._07.OkPayLink_OkPayService.VerificationStatuses getVerificationStatus() {
        return verificationStatus;
    }


    /**
     * Sets the verificationStatus value for this AccountInfo.
     * 
     * @param verificationStatus
     */
    public void setVerificationStatus(org.datacontract.schemas._2004._07.OkPayLink_OkPayService.VerificationStatuses verificationStatus) {
        this.verificationStatus = verificationStatus;
    }


    /**
     * Gets the walletID value for this AccountInfo.
     * 
     * @return walletID
     */
    public java.lang.String getWalletID() {
        return walletID;
    }


    /**
     * Sets the walletID value for this AccountInfo.
     * 
     * @param walletID
     */
    public void setWalletID(java.lang.String walletID) {
        this.walletID = walletID;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof AccountInfo)) return false;
        AccountInfo other = (AccountInfo) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.accountID==null && other.getAccountID()==null) || 
             (this.accountID!=null &&
              this.accountID.equals(other.getAccountID()))) &&
            ((this.country_ISO==null && other.getCountry_ISO()==null) || 
             (this.country_ISO!=null &&
              this.country_ISO.equals(other.getCountry_ISO()))) &&
            ((this.email==null && other.getEmail()==null) || 
             (this.email!=null &&
              this.email.equals(other.getEmail()))) &&
            ((this.name==null && other.getName()==null) || 
             (this.name!=null &&
              this.name.equals(other.getName()))) &&
            ((this.verificationStatus==null && other.getVerificationStatus()==null) || 
             (this.verificationStatus!=null &&
              this.verificationStatus.equals(other.getVerificationStatus()))) &&
            ((this.walletID==null && other.getWalletID()==null) || 
             (this.walletID!=null &&
              this.walletID.equals(other.getWalletID())));
        __equalsCalc = null;
        return _equals;
    }

    private boolean __hashCodeCalc = false;
    public synchronized int hashCode() {
        if (__hashCodeCalc) {
            return 0;
        }
        __hashCodeCalc = true;
        int _hashCode = 1;
        if (getAccountID() != null) {
            _hashCode += getAccountID().hashCode();
        }
        if (getCountry_ISO() != null) {
            _hashCode += getCountry_ISO().hashCode();
        }
        if (getEmail() != null) {
            _hashCode += getEmail().hashCode();
        }
        if (getName() != null) {
            _hashCode += getName().hashCode();
        }
        if (getVerificationStatus() != null) {
            _hashCode += getVerificationStatus().hashCode();
        }
        if (getWalletID() != null) {
            _hashCode += getWalletID().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(AccountInfo.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI", "AccountInfo"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("accountID");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI", "AccountID"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "long"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("country_ISO");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI", "Country_ISO"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("email");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI", "Email"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("name");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI", "Name"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("verificationStatus");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI", "VerificationStatus"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayLink.OkPayService", "VerificationStatuses"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("walletID");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI", "WalletID"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
    }

    /**
     * Return type metadata object
     */
    public static org.apache.axis.description.TypeDesc getTypeDesc() {
        return typeDesc;
    }

    /**
     * Get Custom Serializer
     */
    public static org.apache.axis.encoding.Serializer getSerializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanSerializer(
            _javaType, _xmlType, typeDesc);
    }

    /**
     * Get Custom Deserializer
     */
    public static org.apache.axis.encoding.Deserializer getDeserializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanDeserializer(
            _javaType, _xmlType, typeDesc);
    }

}
