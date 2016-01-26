/**
 * I_OkPayAPI.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package com.okpay.api;

public interface I_OkPayAPI extends java.rmi.Remote {
    public java.lang.String get_Date_Time() throws java.rmi.RemoteException;
    public org.datacontract.schemas._2004._07.OkPayAPI.Balance[] wallet_Get_Balance(java.lang.String walletID, java.lang.String securityToken) throws java.rmi.RemoteException;
    public org.datacontract.schemas._2004._07.OkPayAPI.Balance wallet_Get_Currency_Balance(java.lang.String walletID, java.lang.String securityToken, java.lang.String currency) throws java.rmi.RemoteException;
    public org.datacontract.schemas._2004._07.OkPayAPI.TransactionInfo send_Money(java.lang.String walletID, java.lang.String securityToken, java.lang.String receiver, java.lang.String currency, java.math.BigDecimal amount, java.lang.String comment, java.lang.Boolean isReceiverPaysFees, java.lang.String invoice) throws java.rmi.RemoteException;
    public org.datacontract.schemas._2004._07.OkPayAPI.TransactionInfo transaction_Get(java.lang.String walletID, java.lang.String securityToken, java.lang.Long txnID, java.lang.String invoice) throws java.rmi.RemoteException;
    public org.datacontract.schemas._2004._07.OkPayAPI.HistoryInfo transaction_History(java.lang.String walletID, java.lang.String securityToken, java.lang.String from, java.lang.String till, java.lang.Integer pageSize, java.lang.Integer pageNumber) throws java.rmi.RemoteException;
    public java.lang.Long debitCard_Prepay(java.lang.String walletID, java.lang.String securityToken, java.lang.String email, java.lang.String currency, java.lang.Boolean isCourierDelivery, java.lang.String comment) throws java.rmi.RemoteException;
    public java.lang.Long account_Check(java.lang.String walletID, java.lang.String securityToken, java.lang.String account) throws java.rmi.RemoteException;
    public org.datacontract.schemas._2004._07.OkPayAPI.Withdrawal_Info withdraw_To_Ecurrency_Calculate(java.lang.String walletID, java.lang.String securityToken, java.lang.String paymentMethod, java.math.BigDecimal amount, java.lang.String currency, java.lang.Boolean feesFromAmount) throws java.rmi.RemoteException;
    public org.datacontract.schemas._2004._07.OkPayAPI.Withdrawal_Info withdraw_To_Ecurrency(java.lang.String walletID, java.lang.String securityToken, java.lang.String paymentMethod, java.lang.String paySystemAccount, java.math.BigDecimal amount, java.lang.String currency, java.lang.Boolean feesFromAmount, java.lang.String invoice) throws java.rmi.RemoteException;
    public org.datacontract.schemas._2004._07.OkPayAPI.Withdrawal_Info withdraw_To_Card_RU(java.lang.String walletID, java.lang.String securityToken, java.lang.String cardNumber, java.math.BigDecimal amount, java.lang.String invoice) throws java.rmi.RemoteException;
    public org.datacontract.schemas._2004._07.OkPayAPI.Withdrawal_Info withdraw_To_Card_World(java.lang.String walletID, java.lang.String securityToken, java.lang.String cardNumber, java.lang.String currency, java.math.BigDecimal amount, java.lang.String expiryMonth, java.lang.String expiryYear, java.lang.String invoice) throws java.rmi.RemoteException;
    public org.datacontract.schemas._2004._07.OkPayAPI.Withdrawal_Info withdraw_To_CryptoCurrency_Calculate(java.lang.String walletID, java.lang.String securityToken, java.lang.String paymentMethod, java.math.BigDecimal amount, java.lang.String currency) throws java.rmi.RemoteException;
    public org.datacontract.schemas._2004._07.OkPayAPI.Withdrawal_Info withdraw_To_CryptoCurrency(java.lang.String walletID, java.lang.String securityToken, java.lang.String paymentMethod, java.lang.String paySystemAccount, java.math.BigDecimal amount, java.lang.String currency, java.lang.String invoice) throws java.rmi.RemoteException;
    public java.lang.Long EX_Account_Check(java.lang.String walletID, java.lang.String securityToken, java.lang.String account) throws java.rmi.RemoteException;
    public org.datacontract.schemas._2004._07.OkPayLink_OkPayService.ClientStatus EX_Client_Check_Status(java.lang.String walletID, java.lang.String securityToken, java.lang.String email) throws java.rmi.RemoteException;
    public org.datacontract.schemas._2004._07.OkPayAPI_DataContract.Subscription subscription_Get(java.lang.String walletID, java.lang.String securityToken, java.lang.Long subscriptionID) throws java.rmi.RemoteException;
    public org.datacontract.schemas._2004._07.OkPayAPI_DataContract.Subscription[] subscriptions_Filter(java.lang.String walletID, java.lang.String securityToken, java.lang.String title, java.lang.String from, java.lang.String till, org.datacontract.schemas._2004._07.OkPayAPI.SubscriptionStatuses[] statuses) throws java.rmi.RemoteException;
    public org.datacontract.schemas._2004._07.OkPayAPI_DataContract.Subscription subscription_Update(java.lang.String walletID, java.lang.String securityToken, org.datacontract.schemas._2004._07.OkPayAPI_DataContract.Subscription sub, java.lang.String comment) throws java.rmi.RemoteException;
    public org.datacontract.schemas._2004._07.OkPayAPI.TransactionInfo[] subscription_Get_Operations(java.lang.String walletID, java.lang.String securityToken, java.lang.Long subscriptionID) throws java.rmi.RemoteException;
    public org.datacontract.schemas._2004._07.OkPayAPI_DataContract.PreapprovedPayment preapprovedPayment_Get(java.lang.String walletID, java.lang.String securityToken, java.lang.Long preapprovedPaymentID) throws java.rmi.RemoteException;
    public org.datacontract.schemas._2004._07.OkPayAPI.TransactionInfo preapprovedPayment_Charge(java.lang.String walletID, java.lang.String securityToken, java.lang.Long preapprovedPaymentID, java.math.BigDecimal amount, java.lang.String comment, java.lang.String receiver) throws java.rmi.RemoteException;
    public org.datacontract.schemas._2004._07.OkPayAPI_DataContract.PreapprovedPayment preapprovedPayment_Cancel(java.lang.String walletID, java.lang.String securityToken, java.lang.Long preapprovedPaymentID, java.lang.String comment) throws java.rmi.RemoteException;
    public org.datacontract.schemas._2004._07.OkPayAPI.TransactionInfo[] preapprovedPayment_Get_Operations(java.lang.String walletID, java.lang.String securityToken, java.lang.Long preapprovedPaymentID) throws java.rmi.RemoteException;
    public org.datacontract.schemas._2004._07.OkPayAPI_DataContract.PreapprovedPayment[] preapprovedPayments_Filter(java.lang.String walletID, java.lang.String securityToken, java.lang.String title, java.lang.String invoice, java.lang.String client, org.datacontract.schemas._2004._07.OkPayAPI.PreapprovedPaymentStatuses[] statuses) throws java.rmi.RemoteException;
}
