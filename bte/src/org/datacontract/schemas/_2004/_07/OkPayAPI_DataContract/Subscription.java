/**
 * Subscription.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package org.datacontract.schemas._2004._07.OkPayAPI_DataContract;

public class Subscription  implements java.io.Serializable {
    private org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo client;

    private java.lang.String currency;

    private java.lang.Long ID;

    private java.lang.Boolean isActive;

    private java.lang.String lastPaymentDateTime;

    private java.lang.String merchantWalletID;

    private java.lang.String nextPaymentDateTime;

    private java.math.BigDecimal outstandingBalance;

    private java.lang.Boolean reattemptAcum;

    private java.lang.Integer reattemptDays;

    private java.lang.Integer regularCount;

    private java.lang.Integer regularCycle;

    private org.datacontract.schemas._2004._07.OkPayAPI.SubscriptionCycleIntervals regularInterval;

    private java.lang.Integer regularPaymentsDone;

    private java.math.BigDecimal regularPrice;

    private java.lang.String retryAt;

    private java.math.BigDecimal setupPrice;

    private org.datacontract.schemas._2004._07.OkPayAPI_DataContract.Address shippingAddress;

    private java.lang.Boolean shippingNeeded;

    private java.lang.String startDateTime;

    private org.datacontract.schemas._2004._07.OkPayAPI.SubscriptionStatuses status;

    private java.lang.String title;

    private java.lang.Integer trialCount;

    private java.lang.Integer trialCycle;

    private org.datacontract.schemas._2004._07.OkPayAPI.SubscriptionCycleIntervals trialInterval;

    private java.lang.Integer trialPaymentsDone;

    private java.math.BigDecimal trialPrice;

    private java.lang.String validUntil;

    public Subscription() {
    }

    public Subscription(
           org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo client,
           java.lang.String currency,
           java.lang.Long ID,
           java.lang.Boolean isActive,
           java.lang.String lastPaymentDateTime,
           java.lang.String merchantWalletID,
           java.lang.String nextPaymentDateTime,
           java.math.BigDecimal outstandingBalance,
           java.lang.Boolean reattemptAcum,
           java.lang.Integer reattemptDays,
           java.lang.Integer regularCount,
           java.lang.Integer regularCycle,
           org.datacontract.schemas._2004._07.OkPayAPI.SubscriptionCycleIntervals regularInterval,
           java.lang.Integer regularPaymentsDone,
           java.math.BigDecimal regularPrice,
           java.lang.String retryAt,
           java.math.BigDecimal setupPrice,
           org.datacontract.schemas._2004._07.OkPayAPI_DataContract.Address shippingAddress,
           java.lang.Boolean shippingNeeded,
           java.lang.String startDateTime,
           org.datacontract.schemas._2004._07.OkPayAPI.SubscriptionStatuses status,
           java.lang.String title,
           java.lang.Integer trialCount,
           java.lang.Integer trialCycle,
           org.datacontract.schemas._2004._07.OkPayAPI.SubscriptionCycleIntervals trialInterval,
           java.lang.Integer trialPaymentsDone,
           java.math.BigDecimal trialPrice,
           java.lang.String validUntil) {
           this.client = client;
           this.currency = currency;
           this.ID = ID;
           this.isActive = isActive;
           this.lastPaymentDateTime = lastPaymentDateTime;
           this.merchantWalletID = merchantWalletID;
           this.nextPaymentDateTime = nextPaymentDateTime;
           this.outstandingBalance = outstandingBalance;
           this.reattemptAcum = reattemptAcum;
           this.reattemptDays = reattemptDays;
           this.regularCount = regularCount;
           this.regularCycle = regularCycle;
           this.regularInterval = regularInterval;
           this.regularPaymentsDone = regularPaymentsDone;
           this.regularPrice = regularPrice;
           this.retryAt = retryAt;
           this.setupPrice = setupPrice;
           this.shippingAddress = shippingAddress;
           this.shippingNeeded = shippingNeeded;
           this.startDateTime = startDateTime;
           this.status = status;
           this.title = title;
           this.trialCount = trialCount;
           this.trialCycle = trialCycle;
           this.trialInterval = trialInterval;
           this.trialPaymentsDone = trialPaymentsDone;
           this.trialPrice = trialPrice;
           this.validUntil = validUntil;
    }


    /**
     * Gets the client value for this Subscription.
     * 
     * @return client
     */
    public org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo getClient() {
        return client;
    }


    /**
     * Sets the client value for this Subscription.
     * 
     * @param client
     */
    public void setClient(org.datacontract.schemas._2004._07.OkPayAPI.AccountInfo client) {
        this.client = client;
    }


    /**
     * Gets the currency value for this Subscription.
     * 
     * @return currency
     */
    public java.lang.String getCurrency() {
        return currency;
    }


    /**
     * Sets the currency value for this Subscription.
     * 
     * @param currency
     */
    public void setCurrency(java.lang.String currency) {
        this.currency = currency;
    }


    /**
     * Gets the ID value for this Subscription.
     * 
     * @return ID
     */
    public java.lang.Long getID() {
        return ID;
    }


    /**
     * Sets the ID value for this Subscription.
     * 
     * @param ID
     */
    public void setID(java.lang.Long ID) {
        this.ID = ID;
    }


    /**
     * Gets the isActive value for this Subscription.
     * 
     * @return isActive
     */
    public java.lang.Boolean getIsActive() {
        return isActive;
    }


    /**
     * Sets the isActive value for this Subscription.
     * 
     * @param isActive
     */
    public void setIsActive(java.lang.Boolean isActive) {
        this.isActive = isActive;
    }


    /**
     * Gets the lastPaymentDateTime value for this Subscription.
     * 
     * @return lastPaymentDateTime
     */
    public java.lang.String getLastPaymentDateTime() {
        return lastPaymentDateTime;
    }


    /**
     * Sets the lastPaymentDateTime value for this Subscription.
     * 
     * @param lastPaymentDateTime
     */
    public void setLastPaymentDateTime(java.lang.String lastPaymentDateTime) {
        this.lastPaymentDateTime = lastPaymentDateTime;
    }


    /**
     * Gets the merchantWalletID value for this Subscription.
     * 
     * @return merchantWalletID
     */
    public java.lang.String getMerchantWalletID() {
        return merchantWalletID;
    }


    /**
     * Sets the merchantWalletID value for this Subscription.
     * 
     * @param merchantWalletID
     */
    public void setMerchantWalletID(java.lang.String merchantWalletID) {
        this.merchantWalletID = merchantWalletID;
    }


    /**
     * Gets the nextPaymentDateTime value for this Subscription.
     * 
     * @return nextPaymentDateTime
     */
    public java.lang.String getNextPaymentDateTime() {
        return nextPaymentDateTime;
    }


    /**
     * Sets the nextPaymentDateTime value for this Subscription.
     * 
     * @param nextPaymentDateTime
     */
    public void setNextPaymentDateTime(java.lang.String nextPaymentDateTime) {
        this.nextPaymentDateTime = nextPaymentDateTime;
    }


    /**
     * Gets the outstandingBalance value for this Subscription.
     * 
     * @return outstandingBalance
     */
    public java.math.BigDecimal getOutstandingBalance() {
        return outstandingBalance;
    }


    /**
     * Sets the outstandingBalance value for this Subscription.
     * 
     * @param outstandingBalance
     */
    public void setOutstandingBalance(java.math.BigDecimal outstandingBalance) {
        this.outstandingBalance = outstandingBalance;
    }


    /**
     * Gets the reattemptAcum value for this Subscription.
     * 
     * @return reattemptAcum
     */
    public java.lang.Boolean getReattemptAcum() {
        return reattemptAcum;
    }


    /**
     * Sets the reattemptAcum value for this Subscription.
     * 
     * @param reattemptAcum
     */
    public void setReattemptAcum(java.lang.Boolean reattemptAcum) {
        this.reattemptAcum = reattemptAcum;
    }


    /**
     * Gets the reattemptDays value for this Subscription.
     * 
     * @return reattemptDays
     */
    public java.lang.Integer getReattemptDays() {
        return reattemptDays;
    }


    /**
     * Sets the reattemptDays value for this Subscription.
     * 
     * @param reattemptDays
     */
    public void setReattemptDays(java.lang.Integer reattemptDays) {
        this.reattemptDays = reattemptDays;
    }


    /**
     * Gets the regularCount value for this Subscription.
     * 
     * @return regularCount
     */
    public java.lang.Integer getRegularCount() {
        return regularCount;
    }


    /**
     * Sets the regularCount value for this Subscription.
     * 
     * @param regularCount
     */
    public void setRegularCount(java.lang.Integer regularCount) {
        this.regularCount = regularCount;
    }


    /**
     * Gets the regularCycle value for this Subscription.
     * 
     * @return regularCycle
     */
    public java.lang.Integer getRegularCycle() {
        return regularCycle;
    }


    /**
     * Sets the regularCycle value for this Subscription.
     * 
     * @param regularCycle
     */
    public void setRegularCycle(java.lang.Integer regularCycle) {
        this.regularCycle = regularCycle;
    }


    /**
     * Gets the regularInterval value for this Subscription.
     * 
     * @return regularInterval
     */
    public org.datacontract.schemas._2004._07.OkPayAPI.SubscriptionCycleIntervals getRegularInterval() {
        return regularInterval;
    }


    /**
     * Sets the regularInterval value for this Subscription.
     * 
     * @param regularInterval
     */
    public void setRegularInterval(org.datacontract.schemas._2004._07.OkPayAPI.SubscriptionCycleIntervals regularInterval) {
        this.regularInterval = regularInterval;
    }


    /**
     * Gets the regularPaymentsDone value for this Subscription.
     * 
     * @return regularPaymentsDone
     */
    public java.lang.Integer getRegularPaymentsDone() {
        return regularPaymentsDone;
    }


    /**
     * Sets the regularPaymentsDone value for this Subscription.
     * 
     * @param regularPaymentsDone
     */
    public void setRegularPaymentsDone(java.lang.Integer regularPaymentsDone) {
        this.regularPaymentsDone = regularPaymentsDone;
    }


    /**
     * Gets the regularPrice value for this Subscription.
     * 
     * @return regularPrice
     */
    public java.math.BigDecimal getRegularPrice() {
        return regularPrice;
    }


    /**
     * Sets the regularPrice value for this Subscription.
     * 
     * @param regularPrice
     */
    public void setRegularPrice(java.math.BigDecimal regularPrice) {
        this.regularPrice = regularPrice;
    }


    /**
     * Gets the retryAt value for this Subscription.
     * 
     * @return retryAt
     */
    public java.lang.String getRetryAt() {
        return retryAt;
    }


    /**
     * Sets the retryAt value for this Subscription.
     * 
     * @param retryAt
     */
    public void setRetryAt(java.lang.String retryAt) {
        this.retryAt = retryAt;
    }


    /**
     * Gets the setupPrice value for this Subscription.
     * 
     * @return setupPrice
     */
    public java.math.BigDecimal getSetupPrice() {
        return setupPrice;
    }


    /**
     * Sets the setupPrice value for this Subscription.
     * 
     * @param setupPrice
     */
    public void setSetupPrice(java.math.BigDecimal setupPrice) {
        this.setupPrice = setupPrice;
    }


    /**
     * Gets the shippingAddress value for this Subscription.
     * 
     * @return shippingAddress
     */
    public org.datacontract.schemas._2004._07.OkPayAPI_DataContract.Address getShippingAddress() {
        return shippingAddress;
    }


    /**
     * Sets the shippingAddress value for this Subscription.
     * 
     * @param shippingAddress
     */
    public void setShippingAddress(org.datacontract.schemas._2004._07.OkPayAPI_DataContract.Address shippingAddress) {
        this.shippingAddress = shippingAddress;
    }


    /**
     * Gets the shippingNeeded value for this Subscription.
     * 
     * @return shippingNeeded
     */
    public java.lang.Boolean getShippingNeeded() {
        return shippingNeeded;
    }


    /**
     * Sets the shippingNeeded value for this Subscription.
     * 
     * @param shippingNeeded
     */
    public void setShippingNeeded(java.lang.Boolean shippingNeeded) {
        this.shippingNeeded = shippingNeeded;
    }


    /**
     * Gets the startDateTime value for this Subscription.
     * 
     * @return startDateTime
     */
    public java.lang.String getStartDateTime() {
        return startDateTime;
    }


    /**
     * Sets the startDateTime value for this Subscription.
     * 
     * @param startDateTime
     */
    public void setStartDateTime(java.lang.String startDateTime) {
        this.startDateTime = startDateTime;
    }


    /**
     * Gets the status value for this Subscription.
     * 
     * @return status
     */
    public org.datacontract.schemas._2004._07.OkPayAPI.SubscriptionStatuses getStatus() {
        return status;
    }


    /**
     * Sets the status value for this Subscription.
     * 
     * @param status
     */
    public void setStatus(org.datacontract.schemas._2004._07.OkPayAPI.SubscriptionStatuses status) {
        this.status = status;
    }


    /**
     * Gets the title value for this Subscription.
     * 
     * @return title
     */
    public java.lang.String getTitle() {
        return title;
    }


    /**
     * Sets the title value for this Subscription.
     * 
     * @param title
     */
    public void setTitle(java.lang.String title) {
        this.title = title;
    }


    /**
     * Gets the trialCount value for this Subscription.
     * 
     * @return trialCount
     */
    public java.lang.Integer getTrialCount() {
        return trialCount;
    }


    /**
     * Sets the trialCount value for this Subscription.
     * 
     * @param trialCount
     */
    public void setTrialCount(java.lang.Integer trialCount) {
        this.trialCount = trialCount;
    }


    /**
     * Gets the trialCycle value for this Subscription.
     * 
     * @return trialCycle
     */
    public java.lang.Integer getTrialCycle() {
        return trialCycle;
    }


    /**
     * Sets the trialCycle value for this Subscription.
     * 
     * @param trialCycle
     */
    public void setTrialCycle(java.lang.Integer trialCycle) {
        this.trialCycle = trialCycle;
    }


    /**
     * Gets the trialInterval value for this Subscription.
     * 
     * @return trialInterval
     */
    public org.datacontract.schemas._2004._07.OkPayAPI.SubscriptionCycleIntervals getTrialInterval() {
        return trialInterval;
    }


    /**
     * Sets the trialInterval value for this Subscription.
     * 
     * @param trialInterval
     */
    public void setTrialInterval(org.datacontract.schemas._2004._07.OkPayAPI.SubscriptionCycleIntervals trialInterval) {
        this.trialInterval = trialInterval;
    }


    /**
     * Gets the trialPaymentsDone value for this Subscription.
     * 
     * @return trialPaymentsDone
     */
    public java.lang.Integer getTrialPaymentsDone() {
        return trialPaymentsDone;
    }


    /**
     * Sets the trialPaymentsDone value for this Subscription.
     * 
     * @param trialPaymentsDone
     */
    public void setTrialPaymentsDone(java.lang.Integer trialPaymentsDone) {
        this.trialPaymentsDone = trialPaymentsDone;
    }


    /**
     * Gets the trialPrice value for this Subscription.
     * 
     * @return trialPrice
     */
    public java.math.BigDecimal getTrialPrice() {
        return trialPrice;
    }


    /**
     * Sets the trialPrice value for this Subscription.
     * 
     * @param trialPrice
     */
    public void setTrialPrice(java.math.BigDecimal trialPrice) {
        this.trialPrice = trialPrice;
    }


    /**
     * Gets the validUntil value for this Subscription.
     * 
     * @return validUntil
     */
    public java.lang.String getValidUntil() {
        return validUntil;
    }


    /**
     * Sets the validUntil value for this Subscription.
     * 
     * @param validUntil
     */
    public void setValidUntil(java.lang.String validUntil) {
        this.validUntil = validUntil;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof Subscription)) return false;
        Subscription other = (Subscription) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.client==null && other.getClient()==null) || 
             (this.client!=null &&
              this.client.equals(other.getClient()))) &&
            ((this.currency==null && other.getCurrency()==null) || 
             (this.currency!=null &&
              this.currency.equals(other.getCurrency()))) &&
            ((this.ID==null && other.getID()==null) || 
             (this.ID!=null &&
              this.ID.equals(other.getID()))) &&
            ((this.isActive==null && other.getIsActive()==null) || 
             (this.isActive!=null &&
              this.isActive.equals(other.getIsActive()))) &&
            ((this.lastPaymentDateTime==null && other.getLastPaymentDateTime()==null) || 
             (this.lastPaymentDateTime!=null &&
              this.lastPaymentDateTime.equals(other.getLastPaymentDateTime()))) &&
            ((this.merchantWalletID==null && other.getMerchantWalletID()==null) || 
             (this.merchantWalletID!=null &&
              this.merchantWalletID.equals(other.getMerchantWalletID()))) &&
            ((this.nextPaymentDateTime==null && other.getNextPaymentDateTime()==null) || 
             (this.nextPaymentDateTime!=null &&
              this.nextPaymentDateTime.equals(other.getNextPaymentDateTime()))) &&
            ((this.outstandingBalance==null && other.getOutstandingBalance()==null) || 
             (this.outstandingBalance!=null &&
              this.outstandingBalance.equals(other.getOutstandingBalance()))) &&
            ((this.reattemptAcum==null && other.getReattemptAcum()==null) || 
             (this.reattemptAcum!=null &&
              this.reattemptAcum.equals(other.getReattemptAcum()))) &&
            ((this.reattemptDays==null && other.getReattemptDays()==null) || 
             (this.reattemptDays!=null &&
              this.reattemptDays.equals(other.getReattemptDays()))) &&
            ((this.regularCount==null && other.getRegularCount()==null) || 
             (this.regularCount!=null &&
              this.regularCount.equals(other.getRegularCount()))) &&
            ((this.regularCycle==null && other.getRegularCycle()==null) || 
             (this.regularCycle!=null &&
              this.regularCycle.equals(other.getRegularCycle()))) &&
            ((this.regularInterval==null && other.getRegularInterval()==null) || 
             (this.regularInterval!=null &&
              this.regularInterval.equals(other.getRegularInterval()))) &&
            ((this.regularPaymentsDone==null && other.getRegularPaymentsDone()==null) || 
             (this.regularPaymentsDone!=null &&
              this.regularPaymentsDone.equals(other.getRegularPaymentsDone()))) &&
            ((this.regularPrice==null && other.getRegularPrice()==null) || 
             (this.regularPrice!=null &&
              this.regularPrice.equals(other.getRegularPrice()))) &&
            ((this.retryAt==null && other.getRetryAt()==null) || 
             (this.retryAt!=null &&
              this.retryAt.equals(other.getRetryAt()))) &&
            ((this.setupPrice==null && other.getSetupPrice()==null) || 
             (this.setupPrice!=null &&
              this.setupPrice.equals(other.getSetupPrice()))) &&
            ((this.shippingAddress==null && other.getShippingAddress()==null) || 
             (this.shippingAddress!=null &&
              this.shippingAddress.equals(other.getShippingAddress()))) &&
            ((this.shippingNeeded==null && other.getShippingNeeded()==null) || 
             (this.shippingNeeded!=null &&
              this.shippingNeeded.equals(other.getShippingNeeded()))) &&
            ((this.startDateTime==null && other.getStartDateTime()==null) || 
             (this.startDateTime!=null &&
              this.startDateTime.equals(other.getStartDateTime()))) &&
            ((this.status==null && other.getStatus()==null) || 
             (this.status!=null &&
              this.status.equals(other.getStatus()))) &&
            ((this.title==null && other.getTitle()==null) || 
             (this.title!=null &&
              this.title.equals(other.getTitle()))) &&
            ((this.trialCount==null && other.getTrialCount()==null) || 
             (this.trialCount!=null &&
              this.trialCount.equals(other.getTrialCount()))) &&
            ((this.trialCycle==null && other.getTrialCycle()==null) || 
             (this.trialCycle!=null &&
              this.trialCycle.equals(other.getTrialCycle()))) &&
            ((this.trialInterval==null && other.getTrialInterval()==null) || 
             (this.trialInterval!=null &&
              this.trialInterval.equals(other.getTrialInterval()))) &&
            ((this.trialPaymentsDone==null && other.getTrialPaymentsDone()==null) || 
             (this.trialPaymentsDone!=null &&
              this.trialPaymentsDone.equals(other.getTrialPaymentsDone()))) &&
            ((this.trialPrice==null && other.getTrialPrice()==null) || 
             (this.trialPrice!=null &&
              this.trialPrice.equals(other.getTrialPrice()))) &&
            ((this.validUntil==null && other.getValidUntil()==null) || 
             (this.validUntil!=null &&
              this.validUntil.equals(other.getValidUntil())));
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
        if (getClient() != null) {
            _hashCode += getClient().hashCode();
        }
        if (getCurrency() != null) {
            _hashCode += getCurrency().hashCode();
        }
        if (getID() != null) {
            _hashCode += getID().hashCode();
        }
        if (getIsActive() != null) {
            _hashCode += getIsActive().hashCode();
        }
        if (getLastPaymentDateTime() != null) {
            _hashCode += getLastPaymentDateTime().hashCode();
        }
        if (getMerchantWalletID() != null) {
            _hashCode += getMerchantWalletID().hashCode();
        }
        if (getNextPaymentDateTime() != null) {
            _hashCode += getNextPaymentDateTime().hashCode();
        }
        if (getOutstandingBalance() != null) {
            _hashCode += getOutstandingBalance().hashCode();
        }
        if (getReattemptAcum() != null) {
            _hashCode += getReattemptAcum().hashCode();
        }
        if (getReattemptDays() != null) {
            _hashCode += getReattemptDays().hashCode();
        }
        if (getRegularCount() != null) {
            _hashCode += getRegularCount().hashCode();
        }
        if (getRegularCycle() != null) {
            _hashCode += getRegularCycle().hashCode();
        }
        if (getRegularInterval() != null) {
            _hashCode += getRegularInterval().hashCode();
        }
        if (getRegularPaymentsDone() != null) {
            _hashCode += getRegularPaymentsDone().hashCode();
        }
        if (getRegularPrice() != null) {
            _hashCode += getRegularPrice().hashCode();
        }
        if (getRetryAt() != null) {
            _hashCode += getRetryAt().hashCode();
        }
        if (getSetupPrice() != null) {
            _hashCode += getSetupPrice().hashCode();
        }
        if (getShippingAddress() != null) {
            _hashCode += getShippingAddress().hashCode();
        }
        if (getShippingNeeded() != null) {
            _hashCode += getShippingNeeded().hashCode();
        }
        if (getStartDateTime() != null) {
            _hashCode += getStartDateTime().hashCode();
        }
        if (getStatus() != null) {
            _hashCode += getStatus().hashCode();
        }
        if (getTitle() != null) {
            _hashCode += getTitle().hashCode();
        }
        if (getTrialCount() != null) {
            _hashCode += getTrialCount().hashCode();
        }
        if (getTrialCycle() != null) {
            _hashCode += getTrialCycle().hashCode();
        }
        if (getTrialInterval() != null) {
            _hashCode += getTrialInterval().hashCode();
        }
        if (getTrialPaymentsDone() != null) {
            _hashCode += getTrialPaymentsDone().hashCode();
        }
        if (getTrialPrice() != null) {
            _hashCode += getTrialPrice().hashCode();
        }
        if (getValidUntil() != null) {
            _hashCode += getValidUntil().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(Subscription.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "Subscription"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("client");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "Client"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI", "AccountInfo"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("currency");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "Currency"));
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
        elemField.setFieldName("isActive");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "IsActive"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "boolean"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("lastPaymentDateTime");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "LastPaymentDateTime"));
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
        elemField.setFieldName("nextPaymentDateTime");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "NextPaymentDateTime"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("outstandingBalance");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "OutstandingBalance"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "decimal"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("reattemptAcum");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "ReattemptAcum"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "boolean"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("reattemptDays");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "ReattemptDays"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("regularCount");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "RegularCount"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("regularCycle");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "RegularCycle"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("regularInterval");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "RegularInterval"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI", "SubscriptionCycleIntervals"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("regularPaymentsDone");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "RegularPaymentsDone"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("regularPrice");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "RegularPrice"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "decimal"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("retryAt");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "RetryAt"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("setupPrice");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "SetupPrice"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "decimal"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("shippingAddress");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "ShippingAddress"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "Address"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("shippingNeeded");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "ShippingNeeded"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "boolean"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("startDateTime");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "StartDateTime"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("status");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "Status"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI", "SubscriptionStatuses"));
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
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("trialCount");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "TrialCount"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("trialCycle");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "TrialCycle"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("trialInterval");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "TrialInterval"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI", "SubscriptionCycleIntervals"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("trialPaymentsDone");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "TrialPaymentsDone"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("trialPrice");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "TrialPrice"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "decimal"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("validUntil");
        elemField.setXmlName(new javax.xml.namespace.QName("http://schemas.datacontract.org/2004/07/OkPayAPI.DataContract", "ValidUntil"));
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
