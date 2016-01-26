/**
 * Withdrawal_Info.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package org.datacontract.schemas._2004._07.OkPayAPI;

public class Withdrawal_Info  implements java.io.Serializable {
    private java.math.BigDecimal amount;

    private java.lang.String currency;

    private java.math.BigDecimal exchangeRate;

    private java.math.BigDecimal fee;

    private java.math.BigDecimal gross;

    private java.lang.Long operationID;

    private java.lang.String paySystemTransactionID;

    private java.lang.String paymentMethod;

    private java.math.BigDecimal paymentMethodAmount;

    private org.datacontract.schemas._2004._07.OkPayAPI.OperationStatus status;

    public Withdrawal_Info() {
    }

    public Withdrawal_Info(
           java.math.BigDecimal amount,
           java.lang.String currency,
           java.math.BigDecimal exchangeRate,
           java.math.BigDecimal fee,
           java.math.BigDecimal gross,
           java.lang.Long operationID,
           java.lang.String paySystemTransactionID,
           java.lang.String paymentMethod,
           java.math.BigDecimal paymentMethodAmount,
           org.datacontract.schemas._2004._07.OkPayAPI.OperationStatus status) {
           this.amount = amount;
           this.currency = currency;
           this.exchangeRate = exchangeRate;
           this.fee = fee;
           this.gross = gross;
           this.operationID = operationID;
           this.paySystemTransactionID = paySystemTransactionID;
           this.paymentMethod = paymentMethod;
           this.paymentMethodAmount = paymentMethodAmount;
           this.status = status;
    }


    /**
     * Gets the amount value for this Withdrawal_Info.
     * 
     * @return amount
     */
    public java.math.BigDecimal getAmount() {
        return amount;
    }


    /**
     * Sets the amount value for this Withdrawal_Info.
     * 
     * @param amount
     */
    public void setAmount(java.math.BigDecimal amount) {
        this.amount = amount;
    }


    /**
     * Gets the currency value for this Withdrawal_Info.
     * 
     * @return currency
     */
    public java.lang.String getCurrency() {
        return currency;
    }


    /**
     * Sets the currency value for this Withdrawal_Info.
     * 
     * @param currency
     */
    public void setCurrency(java.lang.String currency) {
        this.currency = currency;
    }


    /**
     * Gets the exchangeRate value for this Withdrawal_Info.
     * 
     * @return exchangeRate
     */
    public java.math.BigDecimal getExchangeRate() {
        return exchangeRate;
    }


    /**
     * Sets the exchangeRate value for this Withdrawal_Info.
     * 
     * @param exchangeRate
     */
    public void setExchangeRate(java.math.BigDecimal exchangeRate) {
        this.exchangeRate = exchangeRate;
    }


    /**
     * Gets the fee value for this Withdrawal_Info.
     * 
     * @return fee
     */
    public java.math.BigDecimal getFee() {
        return fee;
    }


    /**
     * Sets the fee value for this Withdrawal_Info.
     * 
     * @param fee
     */
    public void setFee(java.math.BigDecimal fee) {
        this.fee = fee;
    }


    /**
     * Gets the gross value for this Withdrawal_Info.
     * 
     * @return gross
     */
    public java.math.BigDecimal getGross() {
        return gross;
    }


    /**
     * Sets the gross value for this Withdrawal_Info.
     * 
     * @param gross
     */
    public void setGross(java.math.BigDecimal gross) {
        this.gross = gross;
    }


    /**
     * Gets the operationID value for this Withdrawal_Info.
     * 
     * @return operationID
     */
    public java.lang.Long getOperationID() {
        return operationID;
    }


    /**
     * Sets the operationID value for this Withdrawal_Info.
     * 
     * @param operationID
     */
    public void setOperationID(java.lang.Long operationID) {
        this.operationID = operationID;
    }


    /**
     * Gets the paySystemTransactionID value for this Withdrawal_Info.
     * 
     * @return paySystemTransactionID
     */
    public java.lang.String getPaySystemTransactionID() {
        return paySystemTransactionID;
    }


    /**
     * Sets the paySystemTransactionID value for this Withdrawal_Info.
     * 
     * @param paySystemTransactionID
     */
    public void setPaySystemTransactionID(java.lang.String paySystemTransactionID) {
        this.paySystemTransactionID = paySystemTransactionID;
    }


    /**
     * Gets the paymentMethod value for this Withdrawal_Info.
     * 
     * @return paymentMethod
     */
    public java.lang.String getPaymentMethod() {
        return paymentMethod;
    }


    /**
     * Sets the paymentMethod value for this Withdrawal_Info.
     * 
     * @param paymentMethod
     */
    public void setPaymentMethod(java.lang.String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }


    /**
     * Gets the paymentMethodAmount value for this Withdrawal_Info.
     * 
     * @return paymentMethodAmount
     */
    public java.math.BigDecimal getPaymentMethodAmount() {
        return paymentMethodAmount;
    }


    /**
     * Sets the paymentMethodAmount value for this Withdrawal_Info.
     * 
     * @param paymentMethodAmount
     */
    public void setPaymentMethodAmount(java.math.BigDecimal paymentMethodAmount) {
        this.paymentMethodAmount = paymentMethodAmount;
    }


    /**
     * Gets the status value for this Withdrawal_Info.
     * 
     * @return status
     */
    public org.datacontract.schemas._2004._07.OkPayAPI.OperationStatus getStatus() {
        return status;
    }


    /**
     * Sets the status value for this Withdrawal_Info.
     * 
     * @param status
     */
    public void setStatus(org.datacontract.schemas._2004._07.OkPayAPI.OperationStatus status) {
        this.status = status;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof Withdrawal_Info)) return false;
        Withdrawal_Info other = (Withdrawal_Info) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.amount==null && other.getAmount()==null) || 
             (this.amount!=null &&
              this.amount.equals(other.getAmount()))) &&
            ((this.currency==null && other.getCurrency()==null) || 
             (this.currency!=null &&
              this.currency.equals(other.getCurrency()))) &&
            ((this.exchangeRate==null && other.getExchangeRate()==null) || 
             (this.exchangeRate!=null &&
              this.exchangeRate.equals(other.getExchangeRate()))) &&
            ((this.fee==null && other.getFee()==null) || 
             (this.fee!=null &&
              this.fee.equals(other.getFee()))) &&
            ((this.gross==null && other.getGross()==null) || 
             (this.gross!=null &&
              this.gross.equals(other.getGross()))) &&
            ((this.operationID==null && other.getOperationID()==null) || 
             (this.operationID!=null &&
              this.operationID.equals(other.getOperationID()))) &&
            ((this.paySystemTransactionID==null && other.getPaySystemTransactionID()==null) || 
             (this.paySystemTransactionID!=null &&
              this.paySystemTransactionID.equals(other.getPaySystemTransactionID()))) &&
            ((this.paymentMethod==null && other.getPaymentMethod()==null) || 
             (this.paymentMethod!=null &&
              this.paymentMethod.equals(other.getPaymentMethod()))) &&
            ((this.paymentMethodAmount==null && other.getPaymentMethodAmount()==null) || 
             (this.paymentMethodAmount!=null &&
              this.paymentMethodAmount.equals(other.getPaymentMethodAmount()))) &&
            ((this.status==null && other.getStatus()==null) || 
             (this.status!=null &&
              this.status.equals(other.getStatus())));
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
        if (getAmount() != null) {
            _hashCode += getAmount().hashCode();
        }
        if (getCurrency() != null) {
            _hashCode += getCurrency().hashCode();
        }
        if (getExchangeRate() != null) {
            _hashCode += getExchangeRate().hashCode();
        }
        if (getFee() != null) {
            _hashCode += getFee().hashCode();
        }
        if (getGross() != null) {
            _hashCode += getGross().hashCode();
        }
        if (getOperationID() != null) {
            _hashCode += getOperationID().hashCode();
        }
        if (getPaySystemTransactionID() != null) {
            _hashCode += getPaySystemTransactionID().hashCode();
        }
        if (getPaymentMethod() != null) {
            _hashCode += getPaymentMethod().hashCode();
        }
        if (getPaymentMethodAmount() != null) {
            _hashCode += getPaymentMethodAmount().hashCode();
        }
        if (getStatus() != null) {
            _hashCode += getStatus().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(Withdrawal_Info.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI", "Withdrawal_Info"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("amount");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI", "Amount"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "decimal"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("currency");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI", "Currency"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("exchangeRate");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI", "ExchangeRate"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "decimal"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("fee");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI", "Fee"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "decimal"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("gross");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI", "Gross"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "decimal"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("operationID");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI", "OperationID"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "long"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("paySystemTransactionID");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI", "PaySystemTransactionID"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("paymentMethod");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI", "PaymentMethod"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("paymentMethodAmount");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI", "PaymentMethodAmount"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "decimal"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("status");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI", "Status"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI", "OperationStatus"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
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
