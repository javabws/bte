/**
 * PreapprovedPayment.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package org.datacontract.schemas._2004._07.OkPayAPI_DataContract;

public class PreapprovedPayment  implements java.io.Serializable {
    private java.math.BigDecimal availableAmount;

    private org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo client;

    private java.lang.Boolean clientPaysFee;

    private java.lang.String currency;

    private java.lang.String endDate;

    private java.lang.Long ID;

    private java.lang.String invoice;

    private java.lang.String lastPaymentDate;

    private java.lang.String merchantWalletID;

    private java.math.BigDecimal paymentsAmount;

    private java.lang.Integer paymentsDone;

    private java.lang.String startDate;

    private org.datacontract.schemas._2004._07.OkPayAPI.PreapprovedPaymentStatuses status;

    private java.lang.String title;

    public PreapprovedPayment() {
    }

    public PreapprovedPayment(
           java.math.BigDecimal availableAmount,
           org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo client,
           java.lang.Boolean clientPaysFee,
           java.lang.String currency,
           java.lang.String endDate,
           java.lang.Long ID,
           java.lang.String invoice,
           java.lang.String lastPaymentDate,
           java.lang.String merchantWalletID,
           java.math.BigDecimal paymentsAmount,
           java.lang.Integer paymentsDone,
           java.lang.String startDate,
           org.datacontract.schemas._2004._07.OkPayAPI.PreapprovedPaymentStatuses status,
           java.lang.String title) {
           this.availableAmount = availableAmount;
           this.client = client;
           this.clientPaysFee = clientPaysFee;
           this.currency = currency;
           this.endDate = endDate;
           this.ID = ID;
           this.invoice = invoice;
           this.lastPaymentDate = lastPaymentDate;
           this.merchantWalletID = merchantWalletID;
           this.paymentsAmount = paymentsAmount;
           this.paymentsDone = paymentsDone;
           this.startDate = startDate;
           this.status = status;
           this.title = title;
    }


    /**
     * Gets the availableAmount value for this PreapprovedPayment.
     * 
     * @return availableAmount
     */
    public java.math.BigDecimal getAvailableAmount() {
        return availableAmount;
    }


    /**
     * Sets the availableAmount value for this PreapprovedPayment.
     * 
     * @param availableAmount
     */
    public void setAvailableAmount(java.math.BigDecimal availableAmount) {
        this.availableAmount = availableAmount;
    }


    /**
     * Gets the client value for this PreapprovedPayment.
     * 
     * @return client
     */
    public org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo getClient() {
        return client;
    }


    /**
     * Sets the client value for this PreapprovedPayment.
     * 
     * @param client
     */
    public void setClient(org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo client) {
        this.client = client;
    }


    /**
     * Gets the clientPaysFee value for this PreapprovedPayment.
     * 
     * @return clientPaysFee
     */
    public java.lang.Boolean getClientPaysFee() {
        return clientPaysFee;
    }


    /**
     * Sets the clientPaysFee value for this PreapprovedPayment.
     * 
     * @param clientPaysFee
     */
    public void setClientPaysFee(java.lang.Boolean clientPaysFee) {
        this.clientPaysFee = clientPaysFee;
    }


    /**
     * Gets the currency value for this PreapprovedPayment.
     * 
     * @return currency
     */
    public java.lang.String getCurrency() {
        return currency;
    }


    /**
     * Sets the currency value for this PreapprovedPayment.
     * 
     * @param currency
     */
    public void setCurrency(java.lang.String currency) {
        this.currency = currency;
    }


    /**
     * Gets the endDate value for this PreapprovedPayment.
     * 
     * @return endDate
     */
    public java.lang.String getEndDate() {
        return endDate;
    }


    /**
     * Sets the endDate value for this PreapprovedPayment.
     * 
     * @param endDate
     */
    public void setEndDate(java.lang.String endDate) {
        this.endDate = endDate;
    }


    /**
     * Gets the ID value for this PreapprovedPayment.
     * 
     * @return ID
     */
    public java.lang.Long getID() {
        return ID;
    }


    /**
     * Sets the ID value for this PreapprovedPayment.
     * 
     * @param ID
     */
    public void setID(java.lang.Long ID) {
        this.ID = ID;
    }


    /**
     * Gets the invoice value for this PreapprovedPayment.
     * 
     * @return invoice
     */
    public java.lang.String getInvoice() {
        return invoice;
    }


    /**
     * Sets the invoice value for this PreapprovedPayment.
     * 
     * @param invoice
     */
    public void setInvoice(java.lang.String invoice) {
        this.invoice = invoice;
    }


    /**
     * Gets the lastPaymentDate value for this PreapprovedPayment.
     * 
     * @return lastPaymentDate
     */
    public java.lang.String getLastPaymentDate() {
        return lastPaymentDate;
    }


    /**
     * Sets the lastPaymentDate value for this PreapprovedPayment.
     * 
     * @param lastPaymentDate
     */
    public void setLastPaymentDate(java.lang.String lastPaymentDate) {
        this.lastPaymentDate = lastPaymentDate;
    }


    /**
     * Gets the merchantWalletID value for this PreapprovedPayment.
     * 
     * @return merchantWalletID
     */
    public java.lang.String getMerchantWalletID() {
        return merchantWalletID;
    }


    /**
     * Sets the merchantWalletID value for this PreapprovedPayment.
     * 
     * @param merchantWalletID
     */
    public void setMerchantWalletID(java.lang.String merchantWalletID) {
        this.merchantWalletID = merchantWalletID;
    }


    /**
     * Gets the paymentsAmount value for this PreapprovedPayment.
     * 
     * @return paymentsAmount
     */
    public java.math.BigDecimal getPaymentsAmount() {
        return paymentsAmount;
    }


    /**
     * Sets the paymentsAmount value for this PreapprovedPayment.
     * 
     * @param paymentsAmount
     */
    public void setPaymentsAmount(java.math.BigDecimal paymentsAmount) {
        this.paymentsAmount = paymentsAmount;
    }


    /**
     * Gets the paymentsDone value for this PreapprovedPayment.
     * 
     * @return paymentsDone
     */
    public java.lang.Integer getPaymentsDone() {
        return paymentsDone;
    }


    /**
     * Sets the paymentsDone value for this PreapprovedPayment.
     * 
     * @param paymentsDone
     */
    public void setPaymentsDone(java.lang.Integer paymentsDone) {
        this.paymentsDone = paymentsDone;
    }


    /**
     * Gets the startDate value for this PreapprovedPayment.
     * 
     * @return startDate
     */
    public java.lang.String getStartDate() {
        return startDate;
    }


    /**
     * Sets the startDate value for this PreapprovedPayment.
     * 
     * @param startDate
     */
    public void setStartDate(java.lang.String startDate) {
        this.startDate = startDate;
    }


    /**
     * Gets the status value for this PreapprovedPayment.
     * 
     * @return status
     */
    public org.datacontract.schemas._2004._07.OkPayAPI.PreapprovedPaymentStatuses getStatus() {
        return status;
    }


    /**
     * Sets the status value for this PreapprovedPayment.
     * 
     * @param status
     */
    public void setStatus(org.datacontract.schemas._2004._07.OkPayAPI.PreapprovedPaymentStatuses status) {
        this.status = status;
    }


    /**
     * Gets the title value for this PreapprovedPayment.
     * 
     * @return title
     */
    public java.lang.String getTitle() {
        return title;
    }


    /**
     * Sets the title value for this PreapprovedPayment.
     * 
     * @param title
     */
    public void setTitle(java.lang.String title) {
        this.title = title;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof PreapprovedPayment)) return false;
        PreapprovedPayment other = (PreapprovedPayment) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.availableAmount==null && other.getAvailableAmount()==null) || 
             (this.availableAmount!=null &&
              this.availableAmount.equals(other.getAvailableAmount()))) &&
            ((this.client==null && other.getClient()==null) || 
             (this.client!=null &&
              this.client.equals(other.getClient()))) &&
            ((this.clientPaysFee==null && other.getClientPaysFee()==null) || 
             (this.clientPaysFee!=null &&
              this.clientPaysFee.equals(other.getClientPaysFee()))) &&
            ((this.currency==null && other.getCurrency()==null) || 
             (this.currency!=null &&
              this.currency.equals(other.getCurrency()))) &&
            ((this.endDate==null && other.getEndDate()==null) || 
             (this.endDate!=null &&
              this.endDate.equals(other.getEndDate()))) &&
            ((this.ID==null && other.getID()==null) || 
             (this.ID!=null &&
              this.ID.equals(other.getID()))) &&
            ((this.invoice==null && other.getInvoice()==null) || 
             (this.invoice!=null &&
              this.invoice.equals(other.getInvoice()))) &&
            ((this.lastPaymentDate==null && other.getLastPaymentDate()==null) || 
             (this.lastPaymentDate!=null &&
              this.lastPaymentDate.equals(other.getLastPaymentDate()))) &&
            ((this.merchantWalletID==null && other.getMerchantWalletID()==null) || 
             (this.merchantWalletID!=null &&
              this.merchantWalletID.equals(other.getMerchantWalletID()))) &&
            ((this.paymentsAmount==null && other.getPaymentsAmount()==null) || 
             (this.paymentsAmount!=null &&
              this.paymentsAmount.equals(other.getPaymentsAmount()))) &&
            ((this.paymentsDone==null && other.getPaymentsDone()==null) || 
             (this.paymentsDone!=null &&
              this.paymentsDone.equals(other.getPaymentsDone()))) &&
            ((this.startDate==null && other.getStartDate()==null) || 
             (this.startDate!=null &&
              this.startDate.equals(other.getStartDate()))) &&
            ((this.status==null && other.getStatus()==null) || 
             (this.status!=null &&
              this.status.equals(other.getStatus()))) &&
            ((this.title==null && other.getTitle()==null) || 
             (this.title!=null &&
              this.title.equals(other.getTitle())));
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
        if (getAvailableAmount() != null) {
            _hashCode += getAvailableAmount().hashCode();
        }
        if (getClient() != null) {
            _hashCode += getClient().hashCode();
        }
        if (getClientPaysFee() != null) {
            _hashCode += getClientPaysFee().hashCode();
        }
        if (getCurrency() != null) {
            _hashCode += getCurrency().hashCode();
        }
        if (getEndDate() != null) {
            _hashCode += getEndDate().hashCode();
        }
        if (getID() != null) {
            _hashCode += getID().hashCode();
        }
        if (getInvoice() != null) {
            _hashCode += getInvoice().hashCode();
        }
        if (getLastPaymentDate() != null) {
            _hashCode += getLastPaymentDate().hashCode();
        }
        if (getMerchantWalletID() != null) {
            _hashCode += getMerchantWalletID().hashCode();
        }
        if (getPaymentsAmount() != null) {
            _hashCode += getPaymentsAmount().hashCode();
        }
        if (getPaymentsDone() != null) {
            _hashCode += getPaymentsDone().hashCode();
        }
        if (getStartDate() != null) {
            _hashCode += getStartDate().hashCode();
        }
        if (getStatus() != null) {
            _hashCode += getStatus().hashCode();
        }
        if (getTitle() != null) {
            _hashCode += getTitle().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(PreapprovedPayment.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "PreapprovedPayment"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("availableAmount");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "AvailableAmount"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "decimal"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("client");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "Client"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI", "AccountInfo"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("clientPaysFee");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "ClientPaysFee"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "boolean"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("currency");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "Currency"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("endDate");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "EndDate"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("ID");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "ID"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "long"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("invoice");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "Invoice"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("lastPaymentDate");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "LastPaymentDate"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("merchantWalletID");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "MerchantWalletID"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("paymentsAmount");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "PaymentsAmount"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "decimal"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("paymentsDone");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "PaymentsDone"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("startDate");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "StartDate"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("status");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "Status"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI", "PreapprovedPaymentStatuses"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("title");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "Title"));
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
